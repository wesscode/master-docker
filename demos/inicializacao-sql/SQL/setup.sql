-- setup.sql
CREATE DATABASE TestDB;
GO

USE TestDB;
GO

CREATE TABLE TestTable (
    ID INT PRIMARY KEY,
    Name NVARCHAR(50)
);
GO

INSERT INTO TestTable (ID, Name) VALUES (1, 'Test Name');
GO 

PRINT 'AQUI VOCÊ COMUNICA O FINAL DA EXECUCAO';
