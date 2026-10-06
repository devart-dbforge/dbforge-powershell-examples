$project = New-DevartDatabaseProject `
    -SourceScriptsFolder "C:\SourceScripts"

Set-DevartPackageInfo `
    -Project $project `
    -Id "AdventureWorks2025" `
    -Version "1.0.0"

Publish-DevartDatabaseProject `
    -Project $project `
    -Repository "C:\Artifacts\NuGetRepository" `
    -AutoIncrementVersion