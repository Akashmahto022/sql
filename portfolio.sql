SHOW DATABASES;

-- for creating databases
CREATE DATABASE AKASH;
CREATE DATABASE NAME;
SHOW DATABASES;

-- create if not exists 
CREATE DATABASE IF NOT EXISTS NAME;

-- to use portfolio datase
USE portfolio;

-- check databases you working on
SELECT database();


-- for creating a tabel primary key use for unique value
CREATE TABLE employee(
	EmployeeId		INT auto_increment,
    FirstName		varchar(40) NOT NULL,
    LastName		varchar(40),
    Age				INT NOT NULL,
    Salary			INT NOT NULL,
    Location		varchar(50) NOT NULL,
    PRIMARY KEY(EmployeeId)
);

SHOW TABLES;
DESC employee;
DROP TABLE employee;

-- insert value to the table;

INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUE ("Akash", "Mahto", 21, 0, "New Delhi");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUE ("Rahul", "Mahto", 26, 2500000, "Delhi");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUE ("golu", "kumar", 22, 50000, "New Delhi");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUE ("virat", "Mahto", 21, 0, "india");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUE ("Shahihd", "Akhtar", 21, 10000, "America");

-- select the whole table and read the table
SELECT * FROM employee;

-- slect persone whose salary is greater than 100000;
SELECT * FROM employee WHERE Salary > 100000;

-- slect the persone firstName and the last name of the persone in the table whose salary biger than 100000
SELECT FirstName,Age FROM employee WHERE Salary > 100000;

-- select the persone whose age id greater then 25
SELECT * FROM employee WHERE age > 25;

-- update the last name of rahul mahto with kumar

UPDATE employee SET LastName = "kumar" where EmployeeId = 2;
UPDATE employee SET LastName = "kumar" where EmployeeId = 1;

-- delete the record of employee id = 4
DELETE FROM employee WHERE EmployeeId = 4;