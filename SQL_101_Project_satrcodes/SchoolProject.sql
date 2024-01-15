-- Create Database
CREATE DATABASE HightSchoolForTamayyz;

/*
 Create 3 tables 
 Students
 Teachers
 Courses
 and then show ever tables using SELECT
 */
 
USE HightSchoolForTamayyz;

CREATE TABLE Students(
StudentId INT PRIMARY KEY,
StudentName VARCHAR(225) NOT NULL,
BOD DATE NOT NULL,  -- fromat 'YYYY-MM-DD'
Gender VARCHAR (10) NOT NULL CHECK (Gender IN ('Female','Male')),
EnrolmentYear YEAR NOT NULL, -- fromat 'YYYY'
StudentEmail VARCHAR(225),
Grade VARCHAR (10) NOT NULL CHECK (Grade IN ('1','2','3','4','5','6')),
Bath VARCHAR (50) NOT NULL CHECK (Bath IN ('Scientific','Humanitarian')),
GPA INT NOT NULL);


SHOW COLUMNS FROM Students;
------------------------------------
USE HightSchoolForTamayyz;

CREATE TABLE Teachers(
TeacherId INT PRIMARY KEY,
TeacherName VARCHAR(225) NOT NULL,
BOD DATE NOT NULL,  -- fromat 'YYYY-MM-DD'
Gender VARCHAR (10) NOT NULL CHECK (Gender IN ('Female','Male')),
TeacherEmail VARCHAR(225),
Office INT);

SHOW COLUMNS FROM Teachers;
------------------------------------
USE HightSchoolForTamayyz;

CREATE TABLE Courses(
CourseId INT PRIMARY KEY,
CourseName VARCHAR(225) NOT NULL);

SHOW COLUMNS FROM Courses;

-- Show all tables in HightSchoolForTamayyz Database
SHOW TABLES;
/* 
Add Values to the 3 tables
for Students 30 data
for Teachers 10 data
for Courses 6 data 
*/

INSERT INTO Students
VALUES (1, "Jana Mohamed", '2008-06-07', 'Female','2023', 'jana1@schoole.sa', '1', 'Scientific', 95), 
(2, "Noura Khalid", '2007-12-30', 'Female','2023', 'Noura2@schoole.sa', '1', 'Scientific', 99), 
(3, "Lama Mohammed", '2007-11-02', 'Female','2023', 'Lama3@schoole.sa', '1', 'Scientific', 100),
(4, "Nahlah Yousef", '2006-02-27', 'Female','2021', 'Nahlah4@schoole.sa', '1', 'Scientific', 95),
(5, "Rolla", '2005-07-28', 'Female','2023', 'Rolla5@schoole.sa', '2', 'Humanitarian', 95),
(6, "Jamilah Ahmad", '2006-01-29', 'Female','2021', 'Jamilah6@schoole.sa', '1', 'Scientific', 90),
(7, "Fatimah Hattem", '2007-11-01', 'Female','2023', 'Fatimah7@schoole.sa', '1', 'Scientific', 91),
(8, "Fatima Suliman", '2008-03-12', 'Female','2023', 'Fatima8@schoole.sa', '1', 'Humanitarian', 95),
(9, "Sara Abduallah", '2008-09-21', 'Female','2023', 'Sara9@schoole.sa', '1', 'Scientific', 95),
(10, "Nouf Faisal", '2006-08-19', 'Female','2021', 'Nouf10@schoole.sa', '1', 'Scientific', 97),
(11, "Lama Abdualrhman", '2008-09-15', 'Female','2023', 'Lama11@schoole.sa', '1', 'Humanitarian', 99),
(12, "Zainab Ali", '2007-06-22', 'Female','2022', 'Zainab12@schoole.sa', '1', 'Scientific', 88),
(13, "Safa Hussain", '2008-03-19', 'Female','2023', 'Safa13@schoole.sa', '1', 'Humanitarian', 100),
(14, "Nourah Hamed", '2007-12-12', 'Female','2023', 'Nourah14@schoole.sa', '1', 'Scientific', 93),
(15, "Layali Ahmad", '2008-10-04', 'Female','2023', 'Layali15@schoole.sa', '1', 'Scientific', 89),
(16, "Marwa Omar", '2006-01-20', 'Female','2022', 'Marwa16@schoole.sa', '1', 'Scientific', 98),
(17, "Haneen Saleh", '2008-02-06', 'Female','2023', 'Haneen17@schoole.sa', '1', 'Scientific', 95),
(18, "Jana Ali", '2008-11-22', 'Female','2023', 'Jana18@schoole.sa', '1', 'Humanitarian', 94),
(19, "Ruba Raid", '2005-08-23', 'Female','2021', 'Ruba19@schoole.sa', '1', 'Scientific', 89),
(20, "Lena", '2007-07-06', 'Female','2023', 'Lena20@schoole.sa', '1', 'Humanitarian', 93),
(21, "Lubna Ebrahim", '2008-07-14', 'Female','2023', 'Lubna21@schoole.sa', '1', 'Scientific', 98),
(22, "Sama", '2005-04-17', 'Female','2022', 'Sama22@schoole.sa', '1', 'Humanitarian', 99),
(23, "Arwa", '2006-05-25', 'Female','2021', 'Arwa23@schoole.sa', '1', 'Scientific', 99),
(24, "Farah Alaa", '2007-07-16', 'Female','2022', 'Farah24@schoole.sa', '1', 'Humanitarian', 100),
(25, "Mona Ebrahim", '2008-05-30', 'Female','2023', 'Mona25@schoole.sa', '1', 'Scientific', 91),
(26, "Amera Hamed", '2008-02-20', 'Female','2023', 'Amera26@schoole.sa', '1', 'Humanitarian', 98),
(27, "Solafh Abduallah", '2005-12-31', 'Female','2022', 'Solafh27@schoole.sa', '1', 'Scientific', 97),
(28, "Mounerah", '2005-11-25', 'Female','2021', 'Mounerah28@schoole.sa', '1', 'Scientific', 100),
(29, "Aya", '2005-11-02', 'Female','2021', 'Aya29@schoole.sa', '1', 'Humanitarian', 92),
(30, "Taraf", '2006-01-01', 'Female','2021', 'Taraf30@schoole.sa', '1', 'Humanitarian', 90);

SELECT * FROM Students;
-------------------------------------------------------
INSERT INTO Teachers
VALUES (11245, "Mona", '1992-01-03', 'Female','T11245@schoole.sa', 23), 
(11987, "Hanadi", '1992-01-03', 'Female','T11987@schoole.sa', 22),
(12765, "Ahlam", '1990-12-20', 'Female','T12765@schoole.sa', 20),
(12835, "Rahma", '1989-05-15', 'Female','T12835@schoole.sa', 20),
(11985, "Salwa", '1992-11-09', 'Female','T11985@schoole.sa', 20),
(11243, "Sana", '1987-10-28', 'Female','T11243@schoole.sa', 22),
(12111, "Khowlah", '1988-02-19', 'Female','T12111@schoole.sa', 21),
(12490, "Asma", '1995-02-19', 'Female','T12490@schoole.sa', 23),
(11056, "Ashawg", '1990-03-16', 'Female','T11056@schoole.sa', 21),
(11063, "Ohoud", '1993-07-03', 'Female','T11063@schoole.sa', 23);

SELECT * FROM Teachers;
-------------------------------------------------------
INSERT INTO Courses
VALUES (101, "MATH"),
(200, "Physics"),
(301, "Chemistry"),
(405, "Biology"),
(100, "Computer"),
(520, "Arabic");

SELECT * FROM Courses;

-------------------------------------------------------
-- Order Students table useing name 

SELECT * 
FROM Students
ORDER BY StudentName;

/* Displays the contents of the Students table, giving the “StudentName” field an alias to 
shorten or make the column name more meaningful. */

SELECT StudentName AS Name, EnrolmentYear, Grade, Bath, GPA
FROM Students;

-- Edit StudentMail from Students table
UPDATE Students
SET StudentEmail = "S1Jana@school.sa"
WHERE StudentId = 1;

SELECT * 
FROM Students
WHERE StudentEmail = "S1Jana@school.sa";

-- Edit Office from Teachers table
UPDATE Teachers
SET Office = 20
WHERE TeacherId = 12490;

SELECT * 
FROM Teachers
WHERE TeacherId = 12490;

















