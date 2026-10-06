$connection = New-DevartSqlDatabaseConnection `
    -Server "DEMO\MSSQL2025" `
    -Database "AdventureWorks2025" `
    -UserName "your_username" `
    -Password "your_password"

$documenterResult = New-DevartDatabaseDocumentation `
    -Connection $connection `
    -ProjectFile "C:\Projects\AdventureWorks2025.ddoc" `
    -Path "C:\Reports" `
    -Output "AdventureWorks2025_Documentation.pdf" `
    -Format Pdf `
    -AdditionalOptions "/author:Devart /breadcrumbs:N"