PRINT 'Creating table dbo.Departments...';

DROP TABLE IF EXISTS dbo.Departments;
GO

CREATE TABLE dbo.Departments
(
    DepartmentID INT IDENTITY(1,1) PRIMARY KEY,
    DepartmentName NVARCHAR(100) NOT NULL
);
GO

PRINT 'Table created.';
GO