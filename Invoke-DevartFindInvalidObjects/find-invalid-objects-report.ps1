$connection = New-DevartSqlDatabaseConnection `
    -Server "DEMO\MSSQL2025" `
    -Database "AdventureWorks2025" `
    -UserName "your_username" `
    -Password "your_password"

Invoke-DevartFindInvalidObjects `
    -Connection $connection `
    -Database "AdventureWorks2025" `
    -Report "C:\Reports\InvalidObjectsReport.csv" `
    -Log "C:\Reports\FindInvalidObjects.log"