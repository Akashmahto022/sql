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
GROUP BY selectedCourse;

-- CORRESPONDING TO EACH COURSE SOURCE OF JOINING , GIVE THE MAXIMUM YEARS OF EXPERINCE ANY PERSON
SELECT sourceOfJoining , MAX(yearsOfExperience) as max_years_of_experince
FROM learner
GROUP BY sourceOfJoining;


-- Display the records of those who have join the cource via more then then 1 source of joining

-- Filteration in required for the aggregation 
-- after group of apply having clause
SELECT sourceOfJoining, COUNT(*) as num_of_student
FROM learner
GROUP BY sourceOfJoining
HAVING num_of_student>1;


-- Display the count of those stident who join vai linkedin
SELECT sourceOfJoining, COUNT(*) as NUM_OF_STUDENT
FROM learner
GROUP BY sourceOfJoining
HAVING sourceOfJoining = "youtube";

-- Display the cource which doesn't include "Excel"
SELECT * FROM course
WHERE courseName NOT LIKE "%Excel%";


-- Display the records of those student who have less then 4 years of experience and source of joing is youtube
SELECT * FROM learner
WHERE yearsOfExperience < 4 AND sourceOfJoining = "youtube" AND selectedCourse = 1;

-- Display the records of those student who have years of experince between 1 to 3 years
SELECT * FROM learner
WHERE yearsOfExperience BETWEEN 1 AND 5




