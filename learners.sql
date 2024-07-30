SHOW DATABASES;
USE portfolio;

SELECT * FROM course;

CREATE TABLE learner(
	userID 					INT AUTO_INCREMENT,
    firstName 				VARCHAR(30) NOT NULL,
    lastName				VARCHAR(30) NOT NULL,
    phoneNo					VARCHAR(15) NOT NULL,
    emailId					VARCHAR(30) NOT NULL,
    enrollMentDate			TIMESTAMP NOT NULL,
    selectedCourse			INT NOT NULL,
    yearsOfExperience		INT,
    learerCompany			VARCHAR(60),
    sourceOfJoining			VARCHAR(30) NOT NULL,
    batchDate				TIMESTAMP NOT NULL,
    location				VARCHAR(30) NOT NULL,
    PRIMARY KEY(userID),
    UNIQUE KEY(emailId),
    FOREIGN KEY(selectedCourse) REFERENCES course(courseID)
);

DESC learner;


-- INSERT THE LEARNER DETAILS IN THE TABLE OF THE LEARNER

INSERT INTO learner(firstName, lastName, phoneNo, emailId, enrollMentDate, selectedCourse, yearsOfExperience, learerCompany, sourceOfJoining, batchDate, location) VALUE("Rahul", "kumar", "525489562", "ajdhsadvasjasa@gmail.com", "2024-01-21", 1, 4,"uber", "LinkedIn", "2024-01-15", "Noida India" );
INSERT INTO learner(firstName, lastName, phoneNo, emailId, enrollMentDate, selectedCourse, yearsOfExperience, learerCompany, sourceOfJoining, batchDate, location) VALUE("Akash", "Mahto", "784512022", "akashdhsadvasjasa@gmail.com", "2023-01-21", 3, 2,"Google", "LinkedIn", "2023-01-5", "Banglor India" );
INSERT INTO learner(firstName, lastName, phoneNo, emailId, enrollMentDate, selectedCourse, yearsOfExperience, learerCompany, sourceOfJoining, batchDate, location) VALUE("Golu", "gupta", "5522249562", "goluadvasjasa@gmail.com", "2024-01-21", 1, 3,"Samsung", "youtube", "2024-01-15", "Noida India" );
INSERT INTO learner(firstName, lastName, phoneNo, emailId, enrollMentDate, selectedCourse, yearsOfExperience, learerCompany, sourceOfJoining, batchDate, location) VALUE("virat", "rathor", "7455555444", "viratsadvasjasa@gmail.com", "2024-01-21", 3, 4,"uber", "LinkedIn", "2024-01-15", "Noida India" );
INSERT INTO learner(firstName, lastName, phoneNo, emailId, enrollMentDate, selectedCourse, yearsOfExperience, learerCompany, sourceOfJoining, batchDate, location) VALUE("Shahid", "Akhtar", "874554545", "Shahidadvasjasa@gmail.com", "2024-01-21", 2, 4,"uber", "LinkedIn", "2024-01-15", "Noida India" );

SELECT * FROM learner;



-- DATA Analysis [employee, coiurse, learner]
-- 1. Give me the record of the employee getting higest salary

SELECT * FROM employee WHERE Salary > 100000;

SELECT * FROM employee
ORDER BY Salary DESC LIMIT 1;

-- GIVE ME THE RECORD OF THE EMPLOYEE GETTING HIGEST SALARY AND AGE IS BIGGER THEN 22

SELECT * FROM employee 
WHERE Age > 18
ORDER BY Salary DESC 
LIMIT 4;

-- DISPLAY NO OF ENROLLMENT IN THE WEBSITE

SELECT COUNT(*) as num_of_enrollment
FROM learner;

-- DISPLAY NO OF ENROLLMENT of the courseId = 3
SELECT COUNT(*) as num_of_enrolment_in_sql
FROM learner 
WHERE selectedCourse = 3;

-- COUNT NO OF LEARNER OF LEARNER ENROLLED IN THE MONTH OF JAN
SELECT COUNT(*) AS num_of_learner_enrolled_in_jan
FROM learner
WHERE enrollMentDate LIKE '%-01-21';

-- UPDATE THE RAHUL DATA WITH YEARS OF EXPERIENCE AS 5 AND COMPANY AS "AMAZON" 
UPDATE learner
SET yearsOfExperience = 2, learerCompany = "AMAZON"
WHERE userID = 1;

-- COUNT THE NO OF COMPANY LEARNER BELONG TO WHERE LEARNERS DOING THERE JOB

SELECT COUNT(learerCompany)
FROM learner
