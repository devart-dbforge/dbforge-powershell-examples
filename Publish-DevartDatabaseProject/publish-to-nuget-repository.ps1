$project = New-DevartDatabaseProject `
    -SourceScriptsFolder "C:\SourceScripts"

Set-DevartPackageInfo `
    -Project $project `
    -Id "AdventureWorks2025" `
    -Version "1.0.0"

Publish-DevartDatabaseProject `
    -Project $project `
    -Repository "http://localhost:5000/v3/index.json" `
    -ApiKey "your_api_key" `
    -AutoIncrementVersion