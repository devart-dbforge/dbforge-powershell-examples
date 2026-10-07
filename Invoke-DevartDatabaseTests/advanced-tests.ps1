$connection = New-DevartSqlDatabaseConnection `
    -Server "DEMO\MSSQL2025" `
    -Database "AdventureWorks2025_test" `
    -UserName "your_username" `
    -Password "your_password"

$tempConnection = New-DevartSqlDatabaseConnection `
    -Server "DEMO\MSSQL2025" `
    -Database "tempdb" `
    -UserName "your_username" `
    -Password "your_password"

$testResult = Invoke-DevartDatabaseTests `
    -InputObject $connection `
    -InstalltSQLtFramework `
    -UnInstalltSQLtFramework `
    -Class "testPerson" `
    -UnitTests "test Function returns expected value" `
    -IncludeTestData `
    -DataGeneratorProject "C:\Projects\AdventureWorks.dgen" `
    -FilterPath "C:\Filters\Filter.scflt" `
    -OutReportFileName "C:\Reports\TestResults.xml" `
    -ReportFormat JUnit `
    -RewriteReport `
    -QueryBatchTimeout 120 `
    -SynchronizationOptions "/IgnorePermissions:Yes" `
    -TemporaryDatabaseServer $tempConnection