$connection = New-DevartSqlDatabaseConnection `
    -Server "DEMO\MSSQL2025" `
    -Database "AdventureWorks2025_test" `
    -UserName "your_username" `
    -Password "your_password"

$testResult = Invoke-DevartDatabaseTests `
    -InputObject $connection `
    -InstalltSQLtFramework