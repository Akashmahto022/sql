-- FOR CHECK THE DATABASE 
SHOW DATABASES;

-- FOR USE THIS DATABASES
USE portfolio;

-- FOR SEE THE TABLE
SHOW TABLES;

-- CHCEK DESC FOR THE TABLE
DESC course;

-- FOR CREATING DATABASE
CREATE DATABASE person;
 
 
 USE person;
 
 -- FOR CHECKING WHICK DATABASES USING
SELECT DATABASE();

CREATE TABLE person_profile(
	username	VARCHAR(40) PRIMARY KEY,
    proffession	VARCHAR(60) NOT NULL,
    pkg			VARCHAR(120),
    address		VARCHAR(200)
);

INSERT INTO person_profile VALUE("Akash", "Software Developer", "120000000", "Nangloi New Delhi");
INSERT INTO person_profile VALUE("Rahul", "Software Engineer", "20000000", "New Delhi");
INSERT INTO person_profile VALUE("Ramesh", "web Developer", "120000", "Noida");
INSERT INTO person_profile VALUE("Deepanshu", "WordPress Developer", "100000", "mukharji nager");

SELECT * FROM person_profile;

SELECT * FROM person_profile WHERE proffession = "Software Developer";

UPDATE person_profile SET proffession = "Full Stack Develoer" WHERE username = "Akash";

DELETE FROM person_profile WHERE username = "Akash"
