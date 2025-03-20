using Synergy.Architecture.Diagrams.Markdown;
using Xunit;

namespace Synergy.Sample.Documentation;

public class Docs
{
    [Fact(DisplayName = "Inject PlantUML diagrams into all *.md files starting from the root")]
    public void inject_plantuml_diagrams()
    {
        var root = Root.Folder.Path;
        PlantUmlDiagrams.Process(root);
    }
}