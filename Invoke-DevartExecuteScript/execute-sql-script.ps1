$connection = New-DevartSqlDatabaseConnection `
    -Server "DEMO\MSSQL2025" `
    -Database "AdventureWorks2025" `
    -UserName "your_username" `
    -Password "your_password"

Invoke-DevartExecuteScript `
    -Connection $connection `
    -Input "C:\SqlScripts\01_CreateObjects.sql"