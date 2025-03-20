using Synergy.Documentation.Code;

namespace Synergy.Sample;

public static class Root
{
    /// <summary>
    /// Represents the root folder of the Git repository.
    /// This property holds the path to the current working directory on the hard drive.
    /// </summary>
    public static readonly CodeFolder Folder = CodeFolder.Current();
    
    /// <summary>
    /// Represents the solution file for the Synergy.Framework project.
    /// This property contains the path to the 'Synergy.Framework.sln' file located within the root folder on the hard drive.
    /// </summary>
    private static readonly CodeFile Solution = CodeFolder.Current().File("Synergy.Framework.sln");
}