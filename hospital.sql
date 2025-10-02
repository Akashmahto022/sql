SHOW DATABASES;
CREATE DATABASE if not exists hospital;
SELECT database();
USE hospital;

SHOW TABLES;

CREATE TABLE employee(
	FirstName	varchar(50),
    LastName	varchar(50),
    Age			int,
    Salary		int,
    Location	varchar(200)
);

DESC employee;


