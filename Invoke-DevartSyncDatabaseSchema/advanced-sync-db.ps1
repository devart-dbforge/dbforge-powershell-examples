$sourceConnection = New-DevartSqlDatabaseConnection `
-Server "DEMO\MSSQL2025" `
-Database "AdventureWorks2025" `
-UserName "your_username" `
-Password "your_password"

$targetConnection = New-DevartSqlDatabaseConnection `
-Server "DEMO\MSSQL2025" `
-Database "AdventureWorks2025_Test" `
-UserName "your_username" `
-Password "your_password"

$syncResult = Invoke-DevartSyncDatabaseSchema `
-Source $sourceConnection `
-Target $targetConnection `
-FilterPath "C:\Filters\Filter.scflt" `
-Report `
-ReportFilePath "C:\Reports\SchemaCompare.html" `
-ReportFormat Html `
-QueryBatchTimeout 120 `
-SynchronizationOptions "/IgnorePermissions:Yes" `
-TransactionIsolationLevel ReadCommitted