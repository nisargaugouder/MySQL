drop DATABASE courses;
CREATE DATABASE courses;
USE courses;

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Department VARCHAR(50),
    Duration INT,
    Credits INT,
    InstructorName VARCHAR(100),
    StartDate DATE,
    EndDate DATE
);

INSERT INTO Courses VALUES
(1, 'Computer Science 101', 'Computer Science', 16, 4, 'Dr. Smith', '2025-06-01', '2025-09-30'),
(2, 'Data Structures', 'Computer Science', 14, 3, 'Dr. Johnson', '2025-07-01', '2025-09-30'),
(3, 'Web Development', 'Information Technology', 12, 3, 'Prof. Lee', '2025-05-15', '2025-08-15'),
(4, 'Database Systems', 'Computer Science', 14, 4, 'Dr. Clark', '2025-06-15', '2025-09-30'),
(5, 'Artificial Intelligence', 'Computer Science', 16, 4, 'Prof. Harris', '2025-07-01', '2025-10-15'),
(6, 'Machine Learning', 'Data Science', 16, 4, 'Dr. Kumar', '2025-06-20', '2025-10-05'),
(7, 'Cloud Computing', 'Information Technology', 14, 3, 'Dr. Allen', '2025-07-10', '2025-10-01'),
(8, 'Cyber Security', 'Computer Science', 16, 4, 'Prof. Davis', '2025-08-01', '2025-11-15'),
(9, 'Mobile App Development', 'Information Technology', 12, 3, 'Dr. Moore', '2025-05-20', '2025-08-20'),
(10, 'Data Analytics', 'Data Science', 14, 3, 'Prof. Scott', '2025-06-05', '2025-09-30'),
(11, 'Blockchain Technology', 'Computer Science', 12, 3, 'Dr. White', '2025-07-15', '2025-10-15'),
(12, 'Software Engineering', 'Computer Science', 16, 4, 'Prof. Taylor', '2025-06-01', '2025-09-30'),
(13, 'Digital Marketing', 'Business', 10, 3, 'Dr. Green', '2025-07-10', '2025-09-30'),
(14, 'Human-Computer Interaction', 'Computer Science', 12, 3, 'Prof. Walker', '2025-06-15', '2025-09-30'),
(15, 'Networking', 'Computer Science', 14, 3, 'Dr. Wilson', '2025-06-20', '2025-09-30'),
(16, 'Game Development', 'Information Technology', 16, 4, 'Prof. Roberts', '2025-05-10', '2025-09-30'),
(17, 'Programming in Python', 'Computer Science', 12, 3, 'Dr. Allen', '2025-06-01', '2025-08-30'),
(18, 'Operating Systems', 'Computer Science', 14, 3, 'Prof. Clark', '2025-05-25', '2025-09-15'),
(19, 'Computer Networks', 'Computer Science', 16, 4, 'Dr. Young', '2025-07-01', '2025-10-30'),
(20, 'Software Testing', 'Information Technology', 14, 3, 'Dr. Martin', '2025-06-10', '2025-09-30');

UPDATE Courses SET Duration = 18 WHERE CourseID IN (1, 2, 3, 4, 5);
UPDATE Courses SET Credits = 5 WHERE Department = 'Data Science' AND CourseID BETWEEN 6 AND 10;
UPDATE Courses SET InstructorName = 'Dr. David' WHERE CourseID = 6;
UPDATE Courses SET StartDate = '2025-06-01' WHERE CourseID = 7 AND Duration > 12;
UPDATE Courses SET EndDate = '2025-11-30' WHERE Credits = 3 AND Duration = 12;
UPDATE Courses SET CourseName = 'Advanced AI' WHERE CourseID = 5;
UPDATE Courses SET Department = 'Computer Engineering' WHERE CourseID = 11;
UPDATE Courses SET InstructorName = 'Prof. Adams' WHERE CourseID = 14;
UPDATE Courses SET StartDate = '2025-08-01' WHERE CourseName = 'Cyber Security';
UPDATE Courses SET Duration = 14 WHERE CourseID = 17;

SELECT * FROM Courses WHERE Department = 'Computer Science';
SELECT * FROM Courses WHERE Credits = 3;
SELECT * FROM Courses WHERE CourseID IN (1, 5, 8);
SELECT * FROM Courses WHERE InstructorName = 'Prof. Clark';

SELECT * FROM Courses WHERE Duration BETWEEN 12 AND 16;
SELECT * FROM Courses WHERE Credits NOT BETWEEN 3 AND 4;
SELECT * FROM Courses WHERE CourseID NOT IN (3, 4, 5);
SELECT * FROM Courses WHERE Department = 'Data Science' OR InstructorName = 'Prof. Roberts';
SELECT * FROM Courses WHERE StartDate > '2025-06-01' AND Duration = 16;
SELECT * FROM Courses WHERE CourseID IN (1, 2, 6, 12);

UPDATE Courses SET Department = 'Cyber Security' WHERE CourseID IN (1, 3, 8);
UPDATE Courses SET EndDate = '2025-12-31' WHERE CourseID NOT IN (7, 9);
UPDATE Courses SET Credits = 4 WHERE Department = 'Information Technology' AND Duration = 12;
UPDATE Courses SET InstructorName = 'Dr. Green' WHERE CourseID BETWEEN 10 AND 15;
UPDATE Courses SET Duration = 14 WHERE CourseID = 2 OR CourseID = 8;
UPDATE Courses SET StartDate = '2025-07-01' WHERE Department = 'Computer Science' AND Credits = 3;
UPDATE Courses SET CourseName = 'Advanced Programming' WHERE CourseID NOT BETWEEN 5 AND 10;

DELETE FROM Courses WHERE CourseID = 1;
DELETE FROM Courses WHERE Department = 'Business' AND Credits = 3;
DELETE FROM Courses WHERE CourseID IN (12, 14);
DELETE FROM Courses WHERE InstructorName = 'Prof. Clark' OR Duration < 12;
DELETE FROM Courses WHERE StartDate > '2025-07-01' AND Credits = 4;
DELETE FROM Courses WHERE CourseID NOT IN (3, 6, 9);
DELETE FROM Courses WHERE Department = 'Information Technology' AND Duration BETWEEN 12 AND 14;
DELETE FROM Courses WHERE EndDate < '2025-10-01' AND Credits = 3;
DELETE FROM Courses WHERE CourseID NOT BETWEEN 5 AND 10;

select * from Courses;