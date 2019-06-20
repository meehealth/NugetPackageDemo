# Create a NuGet Package based on .NET Framework 4.0
> **Warning** The following commands assume that nuget.exe command lies in PATH environment

## Steps
- Create class library
- Use nuget to create a .nuspec and include it into project
```powershell
nuget spec
```
- Edit .nuspec file according to your need
- Create and add `PostBuildCommand.ps1` into project

```xml
<PropertyGroup>
	<PostBuildEvent>PowerShell -NoLogo -ExecutionPolicy bypass -File "$(ProjectDir)PostBuildCommand.ps1" $(ProjectDir) $(ConfigurationName)</PostBuildEvent>
</PropertyGroup>
```

```powershell
[CmdletBinding()]
param (
	$projectDir,
	$configurationName
)
$projectDir
[System.IO.Directory]::SetCurrentDirectory($projectDir)
nuget pack $projectDir -Properties Configuration=$configurationName `
-Version 1.0.1 `
-OutputDirectory $projectDir -Verbosity Detailed
```

- Build project to create .nupkg automatically
- Once project is updated, update version information in PostBuildCommand.ps1 and build again