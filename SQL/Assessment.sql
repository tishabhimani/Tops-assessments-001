-- DA - SQL - Introduction and Getting started with sql
-- Assessment 1: 
-- Sample Table -Worker

CREATE DATABASE sample_worker_DB;

USE sample_worker_DB;

CREATE TABLE worker(
Worker_Id INT PRIMARY KEY NOT NULL,
First_Name VARCHAR(50) NOT NULL,
Last_Name VARCHAR(50) NOT NULL,
Salary FLOAT NOT NULL,
Joinning_Date DATETIME NOT NULL,
DEPARTMENT ENUM("HR","Admin","Account") NOT NULL
);

INSERT INTO worker(Worker_Id,First_Name,Last_Name,Salary,Joinning_Date,DEPARTMENT)
VALUES 

("1", "Monika", "Arora", "100000", '2014-02-20 09:00:00', "HR"),
("2", "Niharika", "Verama", "80000", '2014-06-11 09:00:00', "Admin"),
("3", "Vishal", "Singhal", "300000", '2014-02-20 09:00:00', "HR"),
("4", "Amitabh", "Singh", "500000", '2014-02-20 09:00:00', "Admin"),
("5", "Vivek", "Bhati", "500000", '2014-06-11 09:00:00', "Admin"),
("6", "Vipul", "Diwan", "200000", '2014-06-11 09:00:00', "Account"),
("7", "Satish", "Kumar", "75000", '2014-01-20 00:00:00', "Account"),
("8", "Gitika", "Chauahan", "90000", '2014-04-11 00:00:00', "Admin");


-- QUESTION : 1 : Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending. 
SELECT * FROM worker
ORDER BY First_Name ASC ,DEPARTMENT DESC;

-- QUESTION : 2 : Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table.
SELECT * FROM worker
WHERE  First_Name IN ("Vipul","Satish");

-- other way
SELECT * FROM worker
WHERE First_Name="Vipul" OR First_Name="Satish";

-- QUESTION : 3 :  Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets. 
SELECT * FROM worker
WHERE First_Name LIKE '_____h' 
AND 
length(First_Name)=6;

-- QUESTION : 4 :  Write an SQL query to print details of the Workers whose SALARY lies between 50000 and 300000.
SELECT * FROM worker 
WHERE Salary BETWEEN 50000 and 150000;

-- QUESTION : 5 :   Write an SQL query to fetch duplicate records having matching data in some fields of a table. 
SELECT First_Name,Last_Name ,COUNT(*) AS duplicate_count
FROM worker 
GROUP BY First_Name,Last_Name
HAVING COUNT(*)>1;

-- QUESTION : 6 :   Write an SQL query to show the top 6 records of a table.
SELECT * FROM worker
LIMIT 6;

-- QUESTION : 7 :   Write an SQL query to fetch the departments that have less than five people in them. 
SELECT DEPARTMENT,COUNT(*) 
FROM worker
GROUP BY DEPARTMENT
HAVING COUNT(*)<5;

-- QUESTION : 8 :    Write an SQL query to show all departments along with the number of people in there. 
SELECT DEPARTMENT,COUNT(*) AS Worker_Count
FROM worker ;

-- QUESTION : 9 :    Write an SQL query to print the name of employees having the highest salary in each department. 
select First_Name, DEPARTMENT, Salary
from worker
where (DEPARTMENT, salary) in (select  DEPARTMENT, max(salary)
	from worker
	group by DEPARTMENT)
order by Salary desc;

