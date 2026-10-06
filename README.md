# dbForge DevOps scripts

This folder represents a collection of executable PowerShell cmdlets used in [dbForge DevOps Automation for SQL Server](https://www.devart.com/dbforge/sql/database-devops/). Feel free to use them for learning and reference, plus as the basis for building CI/CD pipelines for automating SQL Server database management.

## Preconditions

All examples use the AdventureWorks2025 database, unless a different database is specified. Before trying the examples, connect to the AdventureWorks2025 database and execute the following script:

```sql
USE AdventureWorks2025;
GO

IF OBJECT_ID('dbo.uspSearchCandidateResumes', 'P') IS NOT NULL
	DROP PROCEDURE dbo.uspSearchCandidateResumes;
GO

IF OBJECT_ID('HumanResources.vJobCandidateEducation', 'V') IS NOT NULL
	DROP VIEW HumanResources.vJobCandidateEducation;
GO

IF OBJECT_ID('Production.ProductDocument', 'U') IS NOT NULL
	DROP TABLE Production.ProductDocument;
GO

IF OBJECT_ID('Production.ProductReview', 'U') IS NOT NULL
	DROP TABLE Production.ProductReview;
GO

IF OBJECT_ID('Production.Document', 'U') IS NOT NULL
	DROP TABLE Production.Document;
GO

IF OBJECT_ID('HumanResources.JobCandidate', 'U') IS NOT NULL
	DROP TABLE HumanResources.JobCandidate;
GO

IF OBJECT_ID('HumanResources.vJobCandidateEmployment', 'V') IS NOT NULL
	DROP VIEW HumanResources.vJobCandidateEmployment;
GO

IF OBJECT_ID('HumanResources.vJobCandidate', 'V') IS NOT NULL
    DROP VIEW HumanResources.vJobCandidate;
GO
```

Set up the following folders:

- C:\SourceScripts
- C:\Filters
- C:\Artifacts
- C:\Artifacts\Export
- C:\Artifacts\FormattedScripts
- C:\Reports
- C:\Projects
- C:\NuGetServer
- C:\SqlScripts

## Connection parameter

In all examples, the `-Connection` parameter may accept either of the following:

- Connection object built using `New-DevartSqlDatabaseConnection`
- Connection string for connecting to SQL Server

The connection string can be passed as a variable or explicitly in the `-Connection` parameter.

**Using the connection object**

```powershell
$connection = New-DevartSqlDatabaseConnection `
-Server "DEMO\MSSQL2025" `
-Database "AdventureWorks2025" `
-UserName "your_username" `
-Password "your_password"
 
Invoke-DevartDatabaseBuild `
-SourceScriptsFolder "C:\SourceScripts" `
-Connection $connection
```

**Using the connection string passed as a variable**

```powershell
$connection = "Server=DEMO\MSSQL2025;Database=AdventureWorks2025;User Id=your_username;Password=your_password;TrustServerCertificate=True"
 
Invoke-DevartDatabaseBuild `
-SourceScriptsFolder "C:\SourceScripts" `
-Connection $connection
```

**Using the connection string explicitly**

```powershell
Invoke-DevartDatabaseBuild `
-SourceScriptsFolder "C:\SourceScripts" `
-Connection "Server=DEMO\MSSQL2025;Database=AdventureWorks2025;User Id=your_username;Password=your_password;TrustServerCertificate=True"
```
