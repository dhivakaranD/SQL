CREATE TABLE JoinsTable(
Id Int,
Product VARCHAR(50),
Price VARCHAR(50),
Orders VARCHAR(100)
)

CREATE TABLE AnotherTable(
CustomerId Int,
CategoryName VARCHAR(50)
)

INSERT INTO JoinsTable (Id,Product,Price,Orders)
VALUES(6,'Fruit','150','China')

INSERT INTO AnotherTable (CustomerId,CategoryName)
VALUES(4,'tree')

--Inner Join

SELECT Id,Product,CategoryName
FROM JoinsTable
INNER JOIN AnotherTable
ON JoinsTable.Id = AnotherTable.CustomerId;

--Left Join

SELECT Id,Product,CategoryName
FROM JoinsTable
LEFT JOIN AnotherTable
ON JoinsTable.Id = AnotherTable.CustomerId;

--Right Join

SELECT Id,Product,CategoryName
FROM JoinsTable
RIGHT JOIN AnotherTable
ON JoinsTable.Id = AnotherTable.CustomerId;

--Full Outer Join

SELECT Id,Product,CategoryName
FROM JoinsTable
FULL OUTER JOIN AnotherTable
ON JoinsTable.Id = AnotherTable.CustomerId;

--Self Join

SELECT Id,Product,CategoryName
FROM JoinsTable, AnotherTable
WHERE JoinsTable.Id = AnotherTable.CustomerId