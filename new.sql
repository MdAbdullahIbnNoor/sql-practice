CREATE DATABASE college;

USE college;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE, 
    gender ENUM('Male', 'Female', 'Other'), 
    email VARCHAR(100) UNIQUE, 
    phone_number VARCHAR(15), 
    address TEXT, 
    course VARCHAR(100),
    status ENUM('Active', 'Inactive') DEFAULT 'Active'
);

INSERT INTO students (first_name, last_name, date_of_birth, gender, email, phone_number, address, course, status)
VALUES
('Alice', 'Smith', '1999-05-20', 'Female', 'alice.smith@example.com', '9876543210', '456 Oak Avenue, Townsville', 'Mathematics', 'Active'),
('Bob', 'Johnson', '2001-08-10', 'Male', 'bob.johnson@example.com', '1122334455', '789 Pine Road, Villageton', 'Physics', 'Inactive');


SELECT * FROM students;

INSERT INTO students (first_name, last_name, date_of_birth, gender, email, phone_number, address, course, status)
VALUES
('Sophia', 'Williams', '1998-04-12', 'Female', 'sophia.williams@example.com', '9123456789', '22 Baker Street, London', 'Engineering', 'Active'),
('Liam', 'Brown', '1997-11-23', 'Male', 'liam.brown@example.com', '9234567890', '45 King Street, New York', 'Physics', 'Inactive'),
('Olivia', 'Johnson', '2000-02-18', 'Female', 'olivia.johnson@example.com', '9345678901', '78 Queen Avenue, Toronto', 'Biology', 'Active'),
('Noah', 'Garcia', '1999-09-05', 'Male', 'noah.garcia@example.com', '9456789012', '56 Elm Road, Sydney', 'Mathematics', 'Active'),
('Emma', 'Martinez', '2001-12-30', 'Female', 'emma.martinez@example.com', '9567890123', '90 Pine Lane, Melbourne', 'Computer Science', 'Inactive'),
('James', 'Lee', '2002-07-15', 'Male', 'james.lee@example.com', '9678901234', '12 Maple Court, Dublin', 'Engineering', 'Active'),
('Mia', 'Hernandez', '1996-03-22', 'Female', 'mia.hernandez@example.com', '9789012345', '34 Cedar Drive, Los Angeles', 'Physics', 'Inactive'),
('Ethan', 'Clark', '2003-05-09', 'Male', 'ethan.clark@example.com', '9890123456', '67 Spruce Circle, Chicago', 'Biology', 'Active'),
('Isabella', 'Lewis', '1995-10-11', 'Female', 'isabella.lewis@example.com', '9901234567', '89 Oak Park, San Francisco', 'Mathematics', 'Active'),
('Alexander', 'Walker', '1998-01-28', 'Male', 'alexander.walker@example.com', '9012345678', '21 Birch Road, Miami', 'Computer Science', 'Active');

SELECT * FROM students WHERE status = 'Inactive';

SELECT DISTINCT gender FROM students;

select * from students order by date_of_birth


