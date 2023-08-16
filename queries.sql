CREATE DATABASE IF NOT EXISTS lucky_shrub_db;
USE lucky_shrub_db;

CREATE TABLE employees (
EmployeeID int NOT NULL,
EmployeeName varchar(150) DEFAULT NULL,
Department varchar(150) DEFAULT NULL,
ContactNo varchar(12) DEFAULT NULL,
Email varchar(100) DEFAULT NULL,
AnnualSalary int DEFAULT NULL,
PRIMARY KEY (EmployeeID)
);

INSERT INTO employees VALUES 
(1,'Seamus Hogan', 'Recruitment', '351478025', 'Seamus.h@luckyshrub.com',50000), 
(2,'Thomas Eriksson', 'Legal', '351475058', 'Thomas.e@ luckyshrub.com',75000), 
(3,'Simon Tolo', 'Marketing', '351930582','Simon.t@ luckyshrub.com',40000), 
(4,'Francesca Soffia', 'Finance', '351258569','Francesca.s@ luckyshrub.com',45000), 
(5,'Emily Sierra', 'Customer Service', '351083098','Emily.s@ luckyshrub.com',35000), 
(6,'Maria Carter', 'Human Resources', '351022508','Maria.c@ luckyshrub.com',55000),
(7,'Rick Griffin', 'Marketing', '351478458','Rick.G@luckyshrub.com',50000);

SELECT * FROM employees WHERE EmployeeID IS NOT NULL;

-- Concatenating ID and name
SELECT CONCAT(EmployeeID, " ", EmployeeName) AS Employees FROM employees;

-- Alias on one table 
SELECT e.EmployeeName, e.Department FROM employees AS e;

-- Task 1: Marketing employees who earn equal or more than 50,000 a year
SELECT * FROM employees WHERE Department = "Marketing" AND AnnualSalary >= 50000;

-- Task 2: Employees who earn less than 50,000 a year
SELECT * FROM employees WHERE NOT AnnualSalary >= 50000;

-- Task 3: Employees that earn less than 50,000 a year and work at either Marketing, Financial or Legal departments
SELECT * FROM employees WHERE AnnualSalary <50000 AND Department IN("Marketing",
"Finance", "Legal");

-- Task 4: Employees whose annual salary is between 10,000 and 50,000
SELECT * FROM employees WHERE AnnualSalary BETWEEN 10000 AND 50000;

-- Task 5: Employees whose name begins with 's' and has at least 4 characters
SELECT * FROM employees WHERE EmployeeName LIKE "S__%";
