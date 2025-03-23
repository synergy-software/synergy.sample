Param(
  [string]$commitMsgFile
)

$branch = git rev-parse --abbrev-ref HEAD
 
Write-Host "Current branch: "$branch 
$commitMsg = (Get-Content $commitMsgFile -Raw)
$issuePattern = "#[0-9]+"
$hashtagPattern = "#\w+"

if(!($branch -match $issuePattern))
{
	if($commitMsg -match "$issuePattern|^Merge branch")
	{
		exit 0
	}
	else
	{
		Write-Host "!!!!!!!!!!!!! Commit message MUST contain issue number in form of hashtag (like #1234) !!!!!!!!!!!!!" 
		exit 1
	}
}
else {
	$taskNo = ([regex]("($issuePattern)")).matches($branch)[0].groups[0].value

	if($commitMsg -match $issuePattern)
	{
		$taskNoInCommit = ([regex]("($issuePattern)")).matches($commitMsg)[0].groups[1].value
		if(!$taskNoInCommit.equals($taskNo))
		{
			Write-Host "!!!!!!!!!!!!! Branch issue number $taskNo is not the same as commit number $taskNoInCommit !!!!!!!!!!!!!"
			exit 0;
		}
		exit 0
	}
	else
	{
        $hashtags = ([regex]("($hashtagPattern)")).matches($branch)
        $hashtagList = foreach ($match in $hashtags) { $match.groups[0].value }
        $sortedHashtags = $hashtagList | Sort-Object
        $prefix = ""
        foreach ($hashtag in $sortedHashtags) {
            $prefix = $prefix + $hashtag + " "
        }

		$prefix.Trim() + ": " + (Get-Content $commitMsgFile -Raw) | Set-Content $commitMsgFile
	}
}
