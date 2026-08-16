CREATE DATABASE IF NOT EXISTS company;
USE company;
CREATE TABLE employee(
 EmpId INT PRIMARY KEY,
 FirstName VARCHAR(20),
 Department VARCHAR(40),
 Salary INT,
 HireDate INT 
);
INSERT INTO employee
(EmpId,FirstName,Department,Salary,HireDate)
VALUES
(101 ,"Alice","IT",6500,2020-03-15),
(102 ,"Mark","HR",4800,2019-07-22),
(103 ,"Sophia","Finanace",7200,2021-01-10),
(104 ,"Daneil","IT",5800,2018-11-05),
(105 ,"Emma","Marketing",5300,2022-04-18),
(106 ,"Liam","Finance",6900,2020-09-29),
(107 ,"Olivia","HR",4600,2017-06-30),
(108 ,"Noah","IT",7500,2023-02-12),
(109 ,"Ava","Marketing",5100,2019-12-02),
(110 ,"Ethan","Finance",8000,2016-05-14);
SELECT * FROM employee;
SELECT EmpId,FirstName,Salary FROM employee; 
SELECT * FROM employee
WHERE Department="IT";
SELECT * FROM employee
WHERE Salary>6000;
SELECT * FROM employee
ORDER BY HireDate DESC;
SELECT * FROM employee
WHERE Salary>4000 AND Salary<7000;
SELECT AVG(Salary)
FROM employee;
SELECT Department, COUNT(Department)
FROM employee
GROUP BY Department
HAVING COUNT(Department)>2;

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
