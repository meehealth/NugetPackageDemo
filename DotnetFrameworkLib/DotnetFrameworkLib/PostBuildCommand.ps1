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