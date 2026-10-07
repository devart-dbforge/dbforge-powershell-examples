$connection = New-DevartSqlDatabaseConnection `
    -Server "DEMO\MSSQL2025" `
    -Database "master" `
    -UserName "your_username" `
    -Password "your_password"

Invoke-DevartFindInvalidObjects `
    -Connection $connection `
    -AllDatabases