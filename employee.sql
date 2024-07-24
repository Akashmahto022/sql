-- use (show databases) to see the list of the databases
show databases;


-- use create database to create new databases
create database employee; 

-- use (use comd) for use that database
use employee;

-- use (select database()) function to see on what database you are
select database();

-- use (create table) comd to create table
CREATE TABLE employeeData(
	id			INT PRIMARY KEY,
    fullName	varchar(40) NOT NULL,
	address		varchar(40) NOT NULL,
    location	varchar(100) NOT NULL
);

-- use (shoe tables) to use see all the table
SHOW TABLES;

-- use (desc) to see description of the table
DESC employeeData;

-- to insert data in the table use (insert into) comd into table
INSERT INTO employeeData VALUE (2, "Akash", "house no 133 nangloi delhi", "New Delhi India");
INSERT INTO employeeData VALUE (22, "Rohan", "house no 3 nangloi delhi", "New Delhi India");
INSERT INTO employeeData VALUE (122, "Drishti", "house no 133 nangloi delhi", "New Delhi India");
INSERT INTO employeeData VALUE (322, "Deepak", "house no 133 nangloi delhi", "New Delhi India");
INSERT INTO employeeData VALUE (422, "Isha", "house no 133 nangloi delhi", "New Delhi India");
INSERT INTO employeeData VALUE (522, "Kanak", "house no 133 nangloi delhi", "New Delhi India");


-- use (selct * from ) comd to see the data table
SELECT * from employeeData;

-- use (select * from _____ where) to see specific data
SELECT * FROM employeeData WHERE id > 222;
SELECT * FROM employeeData WHERE id < 222;

-- use (update ___ set ___ where ____ = valueasign)
UPDATE employeeData SET fullName = "Akash Mahto" WHERE id = 22;

-- use (delete ___ where ____ = valueasign)
DELETE FROM employeeData WHERE id = 2;	




	