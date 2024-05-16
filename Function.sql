
--String Function

--Lower

SELECT LOWER('This IS THE ORDER iN SYSTEm')

--Upper

SELECT UPPER('this is THE  terminal iN BLue coLouR')

--Concat

SELECT CONCAT('This is the Value ','of table in sql database','line of length')

--Trim

SELECT TRIM('           this is sql database                  ')

--Left

SELECT LEFT('this id is empty Value of string',15)

--Right

SELECT RIGHT('This is fire Acident in plave',22)

--Len

SELECT LEN('This Product are sales in market')

--Substring

SELECT SUBSTRING('This is Place to visit in Chennai',9,18)

--Replace

SELECT REPLACE('Microsoft Power Plateform','Plateform','Apps and Power BI')


--Mathematical Function

--Abs

SELECT ABS(-23.1254);

--Round

SELECT ROUND(12.4,0);

--Floor

SELECT FLOOR(12.80);

--Ceiling

SELECT CEILING(12.3);

--Power

SELECT POWER(2, 5);

-- Log

SELECT LOG(10);

--PI

SELECT PI();

--Exp

SELECT EXP(5);

-- Aggregate Functions

--Count

SELECT COUNT(*) FROM Employee 
SELECT COUNT(FirstName) FROM Employee 

--Max

SELECT MAX(EmployeeID) FROM Employee

--Min

SELECT MIN(FirstName) FROM Employee
