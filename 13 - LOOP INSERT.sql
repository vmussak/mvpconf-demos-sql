
CREATE TABLE MinhaTabela 
(
	Id  INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
    Item1 VarChar(250) NOT NULL,
    Item2 VarChar(250) NOT NULL
)
GO
CHECKPOINT
GO
DECLARE @i INT = 1
WHILE @i <= 5000
BEGIN
  INSERT INTO MinhaTabela VALUES(NEWID(), NEWID())
  SET @i+= 1
END
GO


IF OBJECT_ID('MinhaTabela') IS NOT NULL
  DROP TABLE MinhaTabela
GO
CREATE TABLE MinhaTabela 
(
	Id  INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
    Item1 VarChar(250) NOT NULL,
    Item2 VarChar(250) NOT NULL
)

CHECKPOINT
GO

BEGIN TRANSACTION
DECLARE @i INT = 1
WHILE @i <= 5000
BEGIN
  INSERT INTO MinhaTabela VALUES(NEWID(), NEWID())
  SET @i+= 1
END
COMMIT
GO