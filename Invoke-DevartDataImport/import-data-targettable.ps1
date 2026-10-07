$connection = New-DevartSqlDatabaseConnection `
    -Server "DEMO\MSSQL2025" `
    -Database "AdventureWorks2025" `
    -UserName "your_username" `
    -Password "your_password"

Invoke-DevartDataImport `
    -Connection $connection `
    -TemplateFile "C:\Projects\ImportFromCsv.dit" `
    -Table "dbo.ImportCustomers"