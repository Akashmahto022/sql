SHOW DATABASES;
USE portfolio;
SHOW TABLES;
SELECT * FROM employee;

-- create a table by the name of course having feilds name "courseID", "courseName", "courseDuration", "courseFee", "courseDecription"alter
CREATE TABLE course(
	courseID		INT AUTO_INCREMENT,
    courseName		varchar(40) NOT NULL,
    courseDuration_Months INT NOT NULL,
    courseFee		INT NOT NULL,
    courseDecription	varchar(300)
)