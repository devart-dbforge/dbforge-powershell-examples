$connection = New-DevartSqlDatabaseConnection `
    -Server "DEMO\MSSQL2025" `
    -Database "AdventureWorks2025" `
    -UserName "your_username" `
    -Password "your_password"

Invoke-DevartDataExport `
    -Connection $connection `
    -TemplateFile "C:\Projects\ExportToCsv.det" `
    -Table "dbo.Customers" `
    -Range "start:1 length:3" `
    -SingleFile `
    -OutputFile "C:\Artifacts\Export\Customers_First3.csv"