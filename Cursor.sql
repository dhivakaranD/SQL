CREATE TABLE Details(
Id Int,
DataColumn VARCHAR(50),
Total VARCHAR(50),
)

INSERT INTO Details(Id, DataColumn ,Total)
VALUES(5,'80','')

DECLARE RunningTotal CURSOR FOR 
SELECT Id, DataColumn FROM Details

SELECT * FROM Details

DECLARE @Id INT
DECLARE @DataColumn INT
DECLARE @RunningTotal INT = 0 

OPEN RunningTotal 
FETCH NEXT FROM RunningTotal INTO @Id, @DataColumn

WHILE @@FETCH_STATUS = 0
BEGIN
    SET @RunningTotal = @RunningTotal + @DataColumn 
    UPDATE Details SET Total = @RunningTotal WHERE Id = @Id
    FETCH NEXT FROM RunningTotal INTO @Id, @DataColumn
END

CLOSE RunningTotal
DEALLOCATE RunningTotal