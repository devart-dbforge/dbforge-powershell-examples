# Create a database project from source scripts
$databaseProject = New-DevartDatabaseProject `
    -SourceScriptsFolder "C:\SourceScripts"

# Configure NuGet package metadata
Set-DevartPackageInfo `
    -Project $databaseProject `
    -Id "Devart.DbForge.DevOpsAutomation.ScriptFolder" `
    -Version "1.0.0"

# Export as NuGet package
Export-DevartDatabaseProject `
    -Project $databaseProject `
    -OutputDirectory "C:\NuGetRepository" `
    -Format NuGet `
    -Overwrite