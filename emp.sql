drop database emp;
create database emp;
use emp;
CREATE TABLE EmployeeData (
    EmployeeID INT PRIMARY KEY,
    Age INT,
    Gender VARCHAR(10),
    BusinessTravel VARCHAR(20),
    EducationField VARCHAR(50),
    JobLevel INT,
    JobRole VARCHAR(100));
    INSERT INTO EmployeeData VALUES(1, 28, 'Male', 'Frequently', 'Engineering', 4, 'Engineering Manager');
    INSERT INTO EmployeeData VALUES(2, 35, 'Female', 'Rarelcountry_infoidy', 'Business', 3, 'Marketing Manager');
    INSERT INTO EmployeeData VALUES(3, 42, 'Male', 'Never', 'HR', 5, 'HR Manager');
    INSERT INTO EmployeeData VALUES(4, 30, 'Female', 'Frequently', 'Engineering', 4, 'Software Development Manager');
    INSERT INTO EmployeeData VALUES(5, 45, 'Male', 'Rarely', 'Medical', 4, 'Medical Manager');
    INSERT INTO EmployeeData VALUES (6, 38, 'Female', 'Never', 'Business', 5, 'Finance Manager');
    INSERT INTO EmployeeData VALUES (7, 32, 'Male', 'Frequently', 'Engineering', 3, 'Software Engineer');
    INSERT INTO EmployeeData VALUES(8, 29, 'Female', 'Rarely', 'Medical', 3, 'Nurse');
    INSERT INTO EmployeeData VALUES (9, 36, 'Male', 'Never', 'HR', 4, 'HR Specialist');
    INSERT INTO EmployeeData VALUES(10, 31, 'Female', 'Frequently', 'Engineering', 2, 'Data Analyst');
    
    select * from EmployeeData;
    select gender from EmployeeData group by gender;