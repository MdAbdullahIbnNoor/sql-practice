CREATE DATABASE testDB;

USE testDB;

CREATE TABLE person(
 PersonID int,
 LastName varchar(255),
 FirstName varchar(255),
 Address varchar(255),
 City varchar(255)
);

INSERT INTO person (PersonID, LastName, FirstName, Address, City) 
VALUES (1001, "Add", "DDD", "Uttara", "Dhaka");

INSERT INTO person (PersonID, LastName, FirstName, City, Address)
VALUES
(1002, 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006'),
(1003, 'Per Olsen', 'Gateveien 15', 'Sandnes', '4306'),
(1004, 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'L1 0AA');

select * from person