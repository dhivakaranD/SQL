

CREATE TABLE UserTableData (
  Id INT PRIMARY KEY IDENTITY(1, 1), 
  Names nvarchar(100),
  Designation nvarchar(50)
); 


CREATE TYPE UT_UserTable AS TABLE( 
    Names nvarchar(100),
    Designation nvarchar(50)
);
GO

CREATE PROCEDURE AddUT
 @addc  UT_UserTable READONLY
AS
BEGIN
INSERT INTO UserTableData (Names, Designation)
SELECT Names,Designation FROM @addc
END
GO

DECLARE @addc as UT_UserTable
INSERT INTO @addc VALUES ('Dhivakaran','Softwares Developer')
EXEC AddUT @addc

SELECT * FROM UserTableData 

