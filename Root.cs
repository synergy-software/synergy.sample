using Synergy.Documentation.Code;

namespace Synergy.Sample;

/// <summary>
/// Represents the root of the Synergy.Sample solution.
/// This class provides static properties to access the root folder and the solution file of the project.
/// WARNING: Do not move this file to a different location, as it will break the path.
/// </summary>
public static class Root
{
    /// <summary>
    /// Represents the root folder of the Git repository.
    /// This property holds the path to the current working directory on the hard drive of this file.
    /// </summary>
    public static readonly CodeFolder Folder = CodeFolder.Current();

    /// <summary>
    /// Represents the solution file for the Synergy.Sample solution file.
    /// This property contains the path to the 'Synergy.Sample.sln' file located within the root folder on the hard drive.
    /// </summary>
    private static readonly CodeFile Solution = CodeFolder.Current().File("Synergy.Sample.sln");
}