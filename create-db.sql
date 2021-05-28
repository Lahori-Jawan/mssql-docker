USE master
GO

IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'site')
BEGIN
  CREATE DATABASE site;
END;
GO

USE site
GO