-- Step 1: Create the database
CREATE DATABASE JoinPracticeDB;
USE JoinPracticeDB;

-- Step 2: Create the tables

-- Table 1: Customers
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ContactNumber VARCHAR(15),
    City VARCHAR(50)
);

-- Table 2: Products
CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2),
    Stock INT
);

-- Table 3: Orders
CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    OrderDate DATE,
    Quantity INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Step 3: Insert data into the tables

-- Insert data into Customers
INSERT INTO Customers (CustomerName, ContactNumber, City)
VALUES
('Alice Smith', '1234567890', 'New York'),
('Bob Johnson', '0987654321', 'Los Angeles'),
('Charlie Brown', '1122334455', 'Chicago');

-- Insert data into Products
INSERT INTO Products (ProductName, Price, Stock)
VALUES
('Laptop', 1200.00, 10),
('Smartphone', 800.00, 20),
('Tablet', 400.00, 15);

-- Insert data into Orders
INSERT INTO Orders (CustomerID, ProductID, OrderDate, Quantity)
VALUES
(1, 1, '2024-12-01', 1),
(2, 2, '2024-12-02', 2),
(3, 3, '2024-12-03', 1),
(1, 3, '2024-12-04', 2);

-- Step 4: Verify the data

-- View Customers
SELECT * FROM Customers;

-- View Products
SELECT * FROM Products;

-- View Orders
SELECT * FROM Orders;

-- Inner Join
SELECT Orders.OrderID, Customers.CustomerName, Products.ProductName, Orders.Quantity, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
INNER JOIN Products ON Orders.ProductID = Products.ProductID;


-- Left Join 
SELECT Customers.CustomerName, Orders.OrderID, Orders.OrderDate
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;


-- Right Join
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
RIGHT JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

SELECT SUM(Quantity) FROM Orders;




