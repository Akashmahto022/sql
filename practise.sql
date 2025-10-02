SHOW DATABASES;

CREATE DATABASE practice;

USE practice;


CREATE TABLE profile(
	id 				INT AUTO_INCREMENT PRIMARY KEY,
	username		VARCHAR(30) NOT NULL,
    phone			VARCHAR(13) NOT NULL,
    address			VARCHAR(200) NOT NULL,
    proffession 	Varchar(20) NOT NULL
);


DROP TABLE profile;
DESC profile;
SELECT * FROM profile;

INSERT INTO profile(username, phone,  address, proffession) VALUE("Akash", 855, "new delhi", "software developer");
INSERT INTO profile(username, phone,  address, proffession) VALUE("Rahul", 85311145, "new delhi", "software developer");
INSERT INTO profile(username, phone,  address, proffession) VALUE("Manish", 878451255, "noida", "Data entry");
INSERT INTO profile(username, phone,  address, proffession) VALUE("manik", 7894654855, "new delhi", "Associate engineer");
INSERT INTO profile(username, phone,  address, proffession) VALUE("Virat", 88444555, "new delhi", "CA");

SELECT * FROM profile WHERE proffession = "software developer";
UPDATE profile SET proffession = "accountant" WHERE id = 5 AND username = "Virat";
DELETE FROM profile WHERE proffession = "accountant" AND id = 5;