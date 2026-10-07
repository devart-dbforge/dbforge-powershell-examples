# Create a database project from source scripts
$databaseProject = New-DevartDatabaseProject `
    -SourceScriptsFolder "C:\SourceScripts"

# Configure package metadata
Set-DevartPackageInfo `
    -Project $databaseProject `
    -Id "BasicPackage" `
    -Version "1.0.0"

# Export as ZIP
Export-DevartDatabaseProject `
    -Project $databaseProject `
    -OutputDirectory "C:\Artifacts" `
    -Format Zip `
    -Overwrite