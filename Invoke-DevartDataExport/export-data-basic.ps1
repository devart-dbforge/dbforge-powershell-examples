$connection = New-DevartSqlDatabaseConnection `
    -Server "DEMO\MSSQL2025" `
    -Database "AdventureWorks2025" `
    -UserName "your_username" `
    -Password "your_password"

Invoke-DevartDataExport `
    -Connection $connection `
    -TemplateFile "C:\Projects\ExportToCsv.det"