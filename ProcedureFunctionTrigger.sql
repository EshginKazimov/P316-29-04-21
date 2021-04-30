--PROCEDURE

--CREATE PROCEDURE GetTicketsByPrice @Price int
--AS
--SELECT * FROM Tickets
--WHERE Price>@Price

--EXECUTE GetTicketsByPrice 11
--EXEC GetTicketsByPrice 12
--GetTicketsByPrice 6

--CREATE PROCEDURE GetTableByName @TableName nvarchar(100)
--AS
--BEGIN
--	DECLARE @str nvarchar(100);
--	SET @str='SELECT * FROM ' + @TableName;
--	EXEC sys.sp_executesql @str
--END

--EXEC GetTableByName 'dbo.Sessions'

--FUNCTION

--SELECT Count(*) FROM Tickets
--WHERE Price>10

--CREATE FUNCTION GetTicketsCountByPrice(@Price int)
--returns int
--AS
--BEGIN
--	DECLARE @count int
--	SELECT @count=Count(*) FROM Tickets
--	WHERE Price>@Price

--	return @count
--END

--SELECT dbo.GetTicketsCountByPrice(14)

--TRIGGER

--INSERT INTO Genre
--VALUES ('Comedy triller2')

--CREATE TRIGGER GetGenresAfterInsert
--ON Genre
--AFTER INSERT
--AS
--BEGIN
--	SELECT * FROM Genre
--END

--DELETE FROM Genre
--WHERE Id=1

--CREATE TRIGGER UpdateInsteadOfDelete
--ON Genre
--INSTEAD OF DELETE
--AS
--BEGIN
--	UPDATE Genre SET IsActive=0
--	WHERE Id=1
--END