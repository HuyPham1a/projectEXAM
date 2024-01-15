CREATE DATABASE EmployeeDB;

USE EmployeeDB;

CREATE TABLE Department (
    DepartID INT PRIMARY KEY,
    DepartName VARCHAR(50) NOT NULL,
    Description VARCHAR(100) NOT NULL
);

CREATE TABLE Employee (
    EmpCode CHAR(6) PRIMARY KEY,
    FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(30) NOT NULL,
    Birthday SMALLDATETIME NOT NULL,
    Gender BIT DEFAULT 1,
    Address VARCHAR(100),
    DepartID INT FOREIGN KEY REFERENCES Department(DepartID),
    Salary MONEY
);

INSERT INTO Department (DepartID, DepartName, Description)
VALUES (1, 'Sales', 'Responsible for selling products'),
       (2, 'Marketing', 'Responsible for promoting products'),
       (3, 'Engineering', 'Responsible for designing products');

INSERT INTO Employee (EmpCode, FirstName, LastName, Birthday, Gender, Address, DepartID, Salary)
VALUES ('E0001', 'Huy', 'Van', '2000-12-11', 1, 'Cau Giay', 1, 50000),
       ('E0002', 'Văn', 'Le', '2004-06-16', 0, 'Tan Trieu', 2, 45000),
       ('E0003', 'Thắng', 'Ngoc', '1999-05-12', 1, 'Hoang Mai', 3, 60000);


UPDATE Employee
SET Salary = Salary * 1.1;


ALTER TABLE Employee
ADD CONSTRAINT CK_Salary CHECK (Salary > 0);

SELECT *FROM Employee

SELECT * FROM Department