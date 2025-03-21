Param(
  [string]$commitMsgFile
)

$branch = git rev-parse --abbrev-ref HEAD
 
Write-Host "Current branch: "$branch 
$commitMsg = (Get-Content $commitMsgFile -Raw)
$issuePattern = "#[0-9]+"

if(!($branch -match $issuePattern))
{
	if($commitMsg -match "$issuePattern|^Merge branch")
	{
		exit 0
	}
	else
	{
		Write-Host "!!!!!!!!!!!!! Commit MUST contain issue number !!!!!!!!!!!!!" 
		exit 1
	}
}
else{
	$taskNo = ([regex]("($issuePattern)")).matches($branch)[0].groups[0].value

	if($commitMsg -match $issuePattern)
	{
		$taskNoInCommit = ([regex]("($issuePattern)")).matches($commitMsg)[0].groups[1].value
		if(!$taskNoInCommit.equals($taskNo))
		{
			Write-Host "!!!!!!!!!!!!! Branch issue number #$taskNo is not the same as commit number #$taskNoInCommit !!!!!!!!!!!!!"
			exit 0;
		}
		exit 0
	}
	else
	{
        $hashtags = ([regex]("(#\w+)")).matches($branch)
        $prefix = ""
        foreach ($hashtag in $hashtags) {
            $prefix = $prefix + $hashtag.groups[0].value + " "
        }

		$prefix.Trim() + ": " + (Get-Content $commitMsgFile -Raw) | Set-Content $commitMsgFile
	}
}
