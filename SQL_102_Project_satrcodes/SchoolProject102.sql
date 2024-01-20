/* Using the project SQL 101
"HightSchoolForTamayyz database"
do the follow */

Use HightSchoolForTamayyz;

-- Create a table for excellent students from the Students table. 
-- The table contains data for students whose GPA is higher than 94.
CREATE TABLE ExcellentStudents
SELECT *
FROM Students
WHERE GPA >= 95;

-- Retrieve ExcellentStudents table
SELECT * FROM ExcellentStudents;

-- Create a table for students who did not pass from the students table.
-- The table contains data for students whose GPA is less than 60.
CREATE TABLE NotPassStudents
SELECT *
FROM Students
WHERE GPA < 60;

-- Retrieve NotPassStudents table
SELECT * FROM NotPassStudents;

-- Retrieve the student name the start with "A"
SELECT *
FROM Students
WHERE StudentName LIKE "A%";

-- Retrieve the student name whose names contain four digits.
SELECT *
FROM Students
WHERE StudentName LIKE "____";

-- Apply AVG, MAX, MIN (Aggregate functions) to the student's GPA 
-- and add a clear label to the result.
SELECT AVG(GPA) AS Average_GPA_Student 
FROM Students;


SELECT MAX(GPA) AS Maximum_GPA_Student 
FROM Students;


SELECT MIN(GPA) AS Minimum_GPA_Student 
FROM Students;


-- List and retrieve the names of excellent students in the first level 
-- who have a GPA equal to 100.

SELECT *
FROM Students
WHERE GPA = 100 AND Grade = 1;

-- Retrieve students who are in the first level and are between 15 and 16 years old.
SELECT *
FROM Students
WHERE TIMESTAMPDIFF(Year, Cast(BOD as Date), Cast((Select Now()) as Date)) IN (15, 16);

-- Retrieve the number of students in Level 2.
SELECT COUNT(*)
FROM Students
WHERE Grade = 2;

-- Retrieve students' paths in school without repetition.
SELECT DISTINCT Bath
FROM Students;

-- Retrieve the courses names in capital case
SELECT UPPER(CourseName)
FROM Courses;

-- Retrieve the mean of the GPA and round the number to the smallest number (using numeric functions).

SELECT ROUND(AVG(GPA),2) AS Average_GPA_Student 
FROM Students;


-- Udate all rows from the Students table that have gender Female to F, 
-- and Male to M (using string functions).
-- Able safe updates
SET SQL_SAFE_UPDATES = 0;

UPDATE Students SET Gender = 'F' WHERE Gender = 'Female';
UPDATE Students SET Gender = 'M' WHERE Gender = 'Male';

-- Enable safe updates
SET SQL_SAFE_UPDATES = 1;

-- Update the GPA for students whose GPA is less than 60 and increase their GPA by five grades.








































