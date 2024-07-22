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


-- for creating a tabel
CREATE TABLE employee(
	EmployeeId		INT PRIMARY KEY,
    FirstName		varchar(40) NOT NULL,
    LastName		varchar(40)
    Age				INT NOT NULL,
    Salary			INT NOT NULL,
    Location		varchar(50) NOT NULL,
)

