SHOW DATABASES;
USE portfolio;
SHOW TABLES;

SELECT * FROM learner;

-- COUNT THE NUMBER OF THE LEARNER WHO JOIN THE COURSE WITH THE REFERENCE OF THE LINKEDIN, YOUTUBE COMMUNITY

SELECT sourceOfJoining, COUNT(*) as num_of_student
FROM learner
GROUP BY sourceOfJoining;

-- GROUPING VIA sourceOfJoining AND location 
SELECT sourceOfJoining, location, COUNT(*) as num_of_student
FROM learner
GROUP BY sourceOfJoining, location;

-- CORRESPONDING TO EACH COURSE , HOW MANY STUDENTS HAVE ENROLLED
SELECT selectedCourse, COUNT(*) as num_of_student_join_which_course
FROM learner
GROUP BY selectedCourse

-- CORRESPONDING TO EACH COURSE SOURCE OF JOINING , GIVE THE MAXIMUM YEARS OF EXPERINCE ANY PERSON
SELECT selectedCourse, COUNT(*) as num_of_student_join_which_course
FROM learner
GROUP BY selectedCourse

