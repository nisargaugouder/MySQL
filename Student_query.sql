drop database students;
create database students;
use students;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    City VARCHAR(50)
);
INSERT INTO Students VALUES 
(1, 'Alice', 'Smith', 20, 'Female', 'alice@gmail.com', '9876543210', 'Bangalore'),
(2, 'Bob', 'Jones', 22, 'Male', 'bob@gmail.com', '9876500000', 'Chennai'),
(3, 'Cara', 'Brown', 19, 'Female', 'cara@gmail.com', '9876512345', 'Mumbai'),
(4, 'David', 'Clark', 23, 'Male', 'david@gmail.com', '9876523456', 'Hyderabad'),
(5, 'Eva', 'Lewis', 21, 'Female', 'eva@gmail.com', '9876534567', 'Delhi'),
(6, 'Frank', 'Wright', 24, 'Male', 'frank@gmail.com', '9876545678', 'Pune'),
(7, 'Grace', 'Hall', 20, 'Female', 'grace@gmail.com', '9876556789', 'Kolkata'),
(8, 'Hank', 'Adams', 22, 'Male', 'hank@gmail.com', '9876567890', 'Ahmedabad'),
(9, 'Ivy', 'Scott', 19, 'Female', 'ivy@gmail.com', '9876578901', 'Lucknow'),
(10, 'Jake', 'Green', 21, 'Male', 'jake@gmail.com', '9876589012', 'Chandigarh'),
(11, 'Kara', 'Hill', 20, 'Female', 'kara@gmail.com', '9876590123', 'Bhopal'),
(12, 'Liam', 'Bennett', 23, 'Male', 'liam@gmail.com', '9876601234', 'Jaipur'),
(13, 'Maya', 'Ward', 22, 'Female', 'maya@gmail.com', '9876612345', 'Mysore'),
(14, 'Noah', 'Carter', 24, 'Male', 'noah@gmail.com', '9876623456', 'Nagpur'),
(15, 'Olivia', 'Turner', 21, 'Female', 'olivia@gmail.com', '9876634567', 'Vijayawada'),
(16, 'Paul', 'Phillips', 20, 'Male', 'paul@gmail.com', '9876645678', 'Coimbatore'),
(17, 'Quinn', 'Evans', 19, 'Female', 'quinn@gmail.com', '9876656789', 'Visakhapatnam'),
(18, 'Ryan', 'Foster', 23, 'Male', 'ryan@gmail.com', '9876667890', 'Madurai'),
(19, 'Sara', 'Murphy', 22, 'Female', 'sara@gmail.com', '9876678901', 'Tirupati'),
(20, 'Tom', 'Price', 21, 'Male', 'tom@gmail.com', '9876689012', 'Hubli');

UPDATE Students SET City = 'Hyderabad' WHERE StudentID BETWEEN 1 AND 10;
UPDATE Students SET Email = 'eva.new@gmail.com' WHERE FirstName = 'Eva';
UPDATE Students SET Phone = '9999999999' WHERE LastName = 'Foster';
UPDATE Students SET City = 'Mangalore' WHERE Gender = 'Female' AND Age < 21;
UPDATE Students SET Age = 22 WHERE City = 'Bhopal';
UPDATE Students SET Email = 'updated@gmail.com' WHERE StudentID IN (12, 14, 16);
UPDATE Students SET City = 'Goa' WHERE Phone LIKE '98766%';
UPDATE Students SET FirstName = 'Ryan_Updated' WHERE City = 'Madurai';
UPDATE Students SET LastName = 'UpdatedWard' WHERE Email = 'maya@gmail.com';
UPDATE Students SET Phone = '8888888888' WHERE Gender = 'Male' AND Age > 22;

SELECT * FROM Students WHERE City = 'Hyderabad';
SELECT * FROM Students WHERE FirstName = 'Eva';
SELECT * FROM Students WHERE Phone LIKE '98766%';
SELECT * FROM Students WHERE Gender = 'Female' AND Age < 21;
SELECT * FROM Students WHERE FirstName = 'Ryan_Updated';
SELECT * FROM Students WHERE Email = 'maya@gmail.com';
SELECT * FROM Students WHERE Gender = 'Male' AND Age > 22;

SELECT * FROM Students 
WHERE Gender = 'Female' AND City = 'Mangalore';
SELECT * FROM Students 
WHERE City = 'Goa' OR Age = 21;
SELECT * FROM Students 
WHERE StudentID IN (5, 10, 15);
SELECT * FROM Students 
WHERE StudentID NOT IN (1, 2, 3, 4, 5);
SELECT * FROM Students 
WHERE Age BETWEEN 20 AND 22;
SELECT * FROM Students 
WHERE Age NOT BETWEEN 20 AND 22;

UPDATE Students 
SET City = 'Surat' 
WHERE Gender = 'Female' AND Age < 21;
UPDATE Students 
SET Email = 'updated_or@gmail.com' 
WHERE City = 'Goa' OR Age = 21;
UPDATE Students 
SET Phone = '7777777777' 
WHERE StudentID IN (3, 6, 9);
UPDATE Students 
SET Age = 25 
WHERE StudentID NOT IN (1, 2, 3, 4, 5);
UPDATE Students 
SET LastName = 'UpdatedLast' 
WHERE Age BETWEEN 20 AND 22;
UPDATE Students 
SET FirstName = 'UpdatedName' 
WHERE Age NOT BETWEEN 20 AND 22;

DELETE FROM Students
WHERE City = 'Surat';
DELETE FROM Students
WHERE Gender = 'Male' AND Age = 25;
DELETE FROM Students
WHERE City = 'Goa' OR City = 'Mangalore';
DELETE FROM Students
WHERE StudentID IN (2, 4, 6);
DELETE FROM Students
WHERE StudentID NOT IN (1, 3, 5, 7, 9);
DELETE FROM Students
WHERE Age BETWEEN 22 AND 24;
DELETE FROM Students
WHERE Age NOT BETWEEN 20 AND 22;


select * from Students;