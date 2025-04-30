drop database College;
CREATE DATABASE College;
USE College;



CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(100),
    HeadOfDepartment VARCHAR(100),
    NoOfStaff INT,
    NoOfStudents INT,
    EstablishedYear INT,
    Location VARCHAR(100),
    Accreditation CHAR(1)
);

INSERT INTO Departments VALUES
(1, 'Computer Science', 'Dr. Smith', 25, 320, 1995, 'Block A', 'A'),
(2, 'Electronics', 'Dr. John', 20, 250, 1990, 'Block B', 'B'),
(3, 'Mechanical', 'Prof. Allen', 23, 300, 1985, 'Block C', 'A'),
(4, 'Civil', 'Dr. Roberts', 18, 220, 1982, 'Block D', 'C'),
(5, 'Electrical', 'Dr. Green', 22, 280, 1998, 'Block E', 'B'),
(6, 'Information Science', 'Prof. Lee', 19, 260, 2001, 'Block F', 'A'),
(7, 'Biotechnology', 'Dr. Davis', 14, 180, 2005, 'Block G', 'B'),
(8, 'Physics', 'Prof. Harris', 17, 190, 1980, 'Block H', 'A'),
(9, 'Mathematics', 'Dr. Moore', 15, 170, 1988, 'Block I', 'C'),
(10, 'Chemistry', 'Dr. Taylor', 16, 200, 1986, 'Block J', 'B'),
(11, 'Aerospace', 'Dr. Newton', 10, 150, 2000, 'Block K', 'A'),
(12, 'Environmental', 'Dr. Flora', 12, 160, 2003, 'Block L', 'B'),
(13, 'Architecture', 'Prof. Build', 13, 170, 1992, 'Block M', 'B'),
(14, 'Psychology', 'Dr. Mind', 11, 130, 1999, 'Block N', 'C'),
(15, 'History', 'Prof. Chrono', 10, 120, 1996, 'Block O', 'B'),
(16, 'Economics', 'Dr. Dollar', 14, 140, 2001, 'Block P', 'A'),
(17, 'Political Science', 'Prof. Power', 13, 110, 1993, 'Block Q', 'C'),
(18, 'Sociology', 'Dr. People', 12, 100, 1997, 'Block R', 'B'),
(19, 'English', 'Dr. Grammar', 15, 150, 1984, 'Block S', 'A'),
(20, 'Philosophy', 'Prof. Thought', 9, 90, 1991, 'Block T', 'C');

UPDATE Departments SET NoOfStaff = 28 WHERE DeptID = 1;
UPDATE Departments SET Accreditation = 'A' WHERE NoOfStudents > 250;
UPDATE Departments SET Location = 'New Block A' WHERE DeptName = 'Computer Science';
UPDATE Departments SET HeadOfDepartment = 'Dr. NewHead' WHERE DeptID IN (4, 6);
UPDATE Departments SET NoOfStudents = 195 WHERE EstablishedYear BETWEEN 1980 AND 1990;
UPDATE Departments SET DeptName = 'CompSci' WHERE DeptID = 1;
UPDATE Departments SET NoOfStaff = 20 WHERE DeptID IN (7, 8, 9);
UPDATE Departments SET Accreditation = 'B' WHERE Location = 'Block M';
UPDATE Departments SET NoOfStudents = 300 WHERE DeptName = 'Electrical';
UPDATE Departments SET HeadOfDepartment = 'Dr. Star' WHERE DeptID NOT BETWEEN 10 AND 15;

DELETE FROM Departments WHERE DeptID = 20;
DELETE FROM Departments WHERE DeptName = 'History' AND NoOfStudents < 130;
DELETE FROM Departments WHERE DeptID IN (3, 6);
DELETE FROM Departments WHERE HeadOfDepartment = 'Dr. Mind' OR NoOfStaff < 12;
DELETE FROM Departments WHERE EstablishedYear BETWEEN 1990 AND 2000;
DELETE FROM Departments WHERE Accreditation NOT IN ('A', 'B');
DELETE FROM Departments WHERE DeptID NOT BETWEEN 2 AND 10;
DELETE FROM Departments WHERE DeptName = 'Mathematics' AND NoOfStudents BETWEEN 150 AND 180;

SELECT * FROM Departments WHERE DeptName = 'CompSci';
SELECT * FROM Departments WHERE NoOfStudents > 200;
SELECT * FROM Departments WHERE NoOfStudents BETWEEN 150 AND 250;
SELECT * FROM Departments WHERE Accreditation NOT IN ('A');
SELECT * FROM Departments WHERE Location IN ('Block B', 'Block D', 'Block H');
SELECT * FROM Departments WHERE EstablishedYear < 1990 OR NoOfStaff > 20;
SELECT * FROM Departments WHERE DeptID NOT BETWEEN 5 AND 15;

UPDATE Departments SET Accreditation = 'A' WHERE DeptID IN (2, 5, 9);
UPDATE Departments SET NoOfStaff = 30 WHERE NoOfStudents BETWEEN 250 AND 320;
UPDATE Departments SET Location = 'Central Block' WHERE DeptID NOT BETWEEN 1 AND 10;
UPDATE Departments SET HeadOfDepartment = 'Dr. Updated' WHERE DeptID IN (11, 13, 15);
UPDATE Departments SET DeptName = 'BioTech' WHERE DeptID = 7 OR DeptName = 'Biotechnology';
UPDATE Departments SET NoOfStudents = 160 WHERE DeptID IN (18, 19);
UPDATE Departments SET Accreditation = 'C' WHERE NoOfStaff < 15;

SELECT * FROM Departments;