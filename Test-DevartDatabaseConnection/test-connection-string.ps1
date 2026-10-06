$connectionString = "Data Source=DEMO\MSSQL2025;Initial Catalog=AdventureWorks2025;User ID=your_username;Password=your_password"

$result = Test-DevartDatabaseConnection `
    -Connection $connectionString

$result