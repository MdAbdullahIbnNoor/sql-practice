create database products;

use products;

CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,  
    category VARCHAR(50),
    price DECIMAL(10,2) NOT NULL,
    quantity_in_stock INT DEFAULT 0,
    supplier_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO Products (product_name, category, price, quantity_in_stock, supplier_id)
VALUES
('Laptop', 'Electronics', 750.50, 25, 101),
('Smartphone', 'Electronics', 499.99, 50, 102),
('Washing Machine', 'Home Appliances', 300.00, 15, 103),
('Refrigerator', 'Home Appliances', 450.00, 10, 104),
('Headphones', 'Accessories', 29.99, 100, 101),
('Running Shoes', 'Footwear', 75.00, 200, 105),
('Office Chair', 'Furniture', 120.00, 30, 106),
('LED TV', 'Electronics', 600.00, 20, 107),
('Microwave Oven', 'Home Appliances', 150.00, 12, 103),
('Bluetooth Speaker', 'Accessories', 40.00, 80, 102),
('Desk Lamp', 'Furniture', 25.00, 150, 106),
('Electric Kettle', 'Home Appliances', 35.00, 50, 108),
('Tablet', 'Electronics', 299.99, 40, 101),
('Air Conditioner', 'Home Appliances', 700.00, 8, 104),
('Backpack', 'Accessories', 45.00, 120, 105);

SELECT * FROM Products;

SELECT AVG(price) FROM Products;

-- SELECT *, (SELECT AVG(price) FROM Products) AS average_price FROM Products;

CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_name VARCHAR(100) NOT NULL, 
    contact_number VARCHAR(15),
    address VARCHAR(255),
    city VARCHAR(50),
    country VARCHAR(50)
);

INSERT INTO Suppliers (supplier_name, contact_number, address, city, country)
VALUES
('Tech World', '1234567890', '123 Tech Lane', 'New York', 'USA'),
('Home Comforts', '9876543210', '456 Home St', 'Los Angeles', 'USA'),
('Gadget Supplies', '5551234567', '789 Gadget Ave', 'San Francisco', 'USA'),
('Furniture Hub', '4449876543', '321 Furniture Blvd', 'Chicago', 'USA'),
('Appliance Center', '3336547890', '654 Appliance Rd', 'Dallas', 'USA'),
('Sports Gear Co', '2223456789', '111 Sports Lane', 'Miami', 'USA'),
('Accessory World', '1112345678', '222 Accessory Way', 'Houston', 'USA'),
('Global Electronics', '6667891234', '333 Global St', 'Seattle', 'USA');

SELECT DISTINCT supplier_id
FROM Products
WHERE supplier_id IS NOT NULL
  AND supplier_id NOT IN (SELECT supplier_id FROM Suppliers);

UPDATE Products
SET supplier_id = (SELECT supplier_id FROM Suppliers LIMIT 1) -- Replace with a valid supplier_id
WHERE supplier_id NOT IN (SELECT supplier_id FROM Suppliers);


SELECT 
    Products.product_name,
    Products.category,
    Products.price,
    Suppliers.supplier_name,
    Suppliers.contact_number
FROM 
    Products
INNER JOIN 
    Suppliers
ON 
    Products.supplier_id = Suppliers.supplier_id;


SELECT * FROM patients where province_id = "ON";

select * from admissions where diagnosis = "Chest Pain";

select * from doctors order by specialty;

SELECT 
    patients.patient_id, 
    patients.first_name || ' ' || patients.last_name AS patient_name, 
    patients.gender, 
    patients.city, 
    admissions.admission_date, 
    admissions.diagnosis, 
    admissions.discharge_date
FROM 
    patients
INNER JOIN 
    admissions
ON 
    patients.patient_id = admissions.patient_id
WHERE 
    admissions.diagnosis = 'Asthma';




