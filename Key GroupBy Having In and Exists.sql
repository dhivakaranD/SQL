-- Create the Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE
);

-- Create the Products table
CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL
);

-- Create the Orders table
CREATE TABLE Orderdata (
    OrderID INT PRIMARY KEY,
    OrderDate DATE NOT NULL,
    CustomerID INT,
    ProductID INT,
    Quantity INT NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

-- Insert data into the Customers table
INSERT INTO Customers (CustomerID, FirstName, LastName, Email)
VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@example.com'),
(2, 'Bob', 'Smith', 'bob.smith@example.com'),
(3, 'Carol', 'Davis', 'carol.davis@example.com');

-- Insert data into the Products table
INSERT INTO Product (ProductID, ProductName, Price)
VALUES
(1, 'Laptop', 999.99),
(2, 'Smartphone', 499.99),
(3, 'Tablet', 299.99);

-- Insert data into the Orders table
INSERT INTO Orderdata (OrderID, OrderDate, CustomerID, ProductID, Quantity)
VALUES
(1, '2023-05-01', 1, 1, 1),
(2, '2023-05-02', 2, 2, 2),
(3, '2023-05-03', 3, 3, 1),
(4, '2023-05-04', 1, 2, 1);



CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE
);

-- Create the Courses table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(255) NOT NULL
);

-- Create the Enrollments table
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

--In

SELECT * 
FROM Students
WHERE StudentID IN (SELECT StudentID FROM Enrollments WHERE CourseID = (SELECT CourseID FROM Courses WHERE CourseName = 'Computer Science'));

-- Exists

SELECT * 
FROM Students s
WHERE EXISTS (SELECT 1 FROM Enrollments e WHERE e.StudentID = s.StudentID);


---GROUP By

SELECT ProductID, SUM(Quantity * Price) AS TotalSales
FROM Sales
GROUP BY ProductID;

SELECT ProductID, COUNT(SaleID) AS NumberOfSales
FROM Sales
GROUP BY ProductID;


--Having

SELECT ProductID, SUM(Quantity * Price) AS TotalSales
FROM Sales
GROUP BY ProductID
HAVING SUM(Quantity * Price) > 1000;
