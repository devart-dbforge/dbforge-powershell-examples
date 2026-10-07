$scriptFolder = "C:\SourceScripts"
$filterPath = "C:\Filters\BuildFilter.scflt"

$connection = New-DevartSqlDatabaseConnection `
    -Server "DEMO\MSSQL2025" `
    -Database "AdventureWorks2025_test" `
    -UserName "your_username" `
    -Password "your_password"

$databaseProject = Invoke-DevartDatabaseBuild `
    -SourceScriptsFolder $scriptFolder `
    -Connection $connection `
    -FilterPath $filterPath `
    -QueryBatchTimeout 120 `
    -SynchronizationOptions "/IgnorePermissions:Yes" `
    -TransactionIsolationLevel ReadCommitted