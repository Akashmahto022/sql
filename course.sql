SHOW DATABASES;
USE portfolio;
SHOW TABLES;
SELECT * FROM employee;

-- create a table by the name of course having feilds name "courseID", "courseName", "courseDuration", "courseFee", "courseDecription"alter
CREATE TABLE course(
	courseID		INT AUTO_INCREMENT PRIMARY KEY,
    courseName		VARCHAR(40) NOT NULL,
    courseDuration_Months INT NOT NULL,
    courseFee		INT NOT NULL,
    courseDecription	VARCHAR(300)
);

DESC course;

-- insert the course details inside the table name
INSERT INTO course(courseName,courseDuration_Months, courseFee,courseDecription) VALUE("Complete Excel", 2, 3000, "master excel");
INSERT INTO course(courseName,courseDuration_Months, courseFee,courseDecription) VALUE("DSA in JavaScript", 2, 10000, "DSA interview Prep");
INSERT INTO course(courseName,courseDuration_Months, courseFee,courseDecription) VALUE("SQL Bootcamp", 1, 00, "SQL for database");

SELECT * FROM course;



