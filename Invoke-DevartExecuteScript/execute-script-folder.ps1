$connection = New-DevartSqlDatabaseConnection `
    -Server "DEMO\MSSQL2025" `
    -Database "master" `
    -UserName "your_username" `
    -Password "your_password"

Invoke-DevartExecuteScript `
    -Connection $connection `
    -Input "C:\SqlScripts" `
    -Database "AdventureWorks2025" `
    -Encoding "utf-8" `
    -IgnoreError