--PROCEDURE

--CREATE PROCEDURE DeleteGenreById @Id int
--AS
--DELETE FROM Genre
--WHERE Id=@Id

--EXECUTE DeleteGenreById 5
--EXEC DeleteGenreById 5
--DeleteGenreById 6

--FUNCTION

--CREATE FUNCTION GetCustomersCountStartWithChar(@FirstChar char)
--returns int
--AS
--BEGIN
--	DECLARE @count int

--	SELECT @count=COUNT(*) FROM Customers
--	WHERE Name LIKE @FirstChar + '%'

--	return @count
--END

--SELECT dbo.GetCustomersCountStartWithChar('F')


--TRIGGER

--CREATE TABLE BackupCustomers(
--	Id int,
--	Name nvarchar(100),
--	Surname nvarchar(100),
--	Phone nvarchar(100)
--)

--CREATE TRIGGER InsertToBackupTable
--ON Customers
--AFTER INSERT
--AS
--BEGIN
--	DECLARE @Id int, @Name nvarchar(100), @Surname nvarchar(100), @Phone nvarchar(100)
	
--	SELECT @Id=Id, @Name=Name, @Surname=Surname, @Phone=Phone FROM inserted CustomersList

--	INSERT INTO BackupCustomers values(@Id, @Name, @Surname, @Phone)
--END

--INSERT INTO Customers
--VALUES ('Kamran', 'Jabiyev', '+994512373434')