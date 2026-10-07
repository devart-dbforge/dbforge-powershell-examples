$scriptFolder = "C:\SourceScripts"

$connection = New-DevartSqlDatabaseConnection `
    -Server "DEMO\MSSQL2025" `
    -Database "AdventureWorks2025_test" `
    -UserName "your_username" `
    -Password "your_password"

$databaseProject = Invoke-DevartDatabaseBuild `
    -SourceScriptsFolder $scriptFolder `
    -Connection $connection