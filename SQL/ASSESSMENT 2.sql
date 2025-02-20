-- ASSESMENT : 2
-- Open school database, then select student table and use following SQL statements. TYPE THE STATEMENT, PRESS ENTER AND NOTE THE OUTPUT 

CREATE DATABASE school;

USE school;

CREATE TABLE Student(
StdID INT NOT NULL,
Std_Name VARCHAR(45) NOT NULL,
Sex VARCHAR(10) NOT NULL,
Percentage FLOAT NOT NULL,
Class INT NOT NULL,
Sec VARCHAR(2) NOT NULL,
Stream VARCHAR(10) NOT NULL,
BOB DATE
);

INSERT INTO Student (StdID, Std_Name, Sex, Percentage, Class, Sec, Stream, BOB)
VALUES
("1", "Surekha Joshi", "Female", "82", "12", "A", "Science", "1998-03-08"),
("2", "Maahi Agarwal", "Female", "56", "11", "C", "Commerce", "2008-11-23"),
("3", "Sanam Verma", "Male", "56", "11", "C", "Commerce", "2006-06-29"),
("4", "Ronit Kumar", "Male", "63", "11", "C", "Commerce", "1997-05-11"),
("5", "Dipesh Pulkit", "Male", "78", "11", "B", "Science", "2003-09-14"),
("6", "Jahanvi Puri", "Female", "60", "11", "B", "Commerce", "2008-11-07"),
("7", "Sanam Kumar", "Male", "23", "12", "F", "Commerce", "1998-03-08"),
("8", "Sahil Saras", "Male", "56", "11", "C", "Commerce", "2008-11-07"),
("9", "Akshra Agarwal", "Female", "72", "12", "B", "Commerce", "1996-10-01"),
("10", "Stuti Mishra", "Female", "39", "11", "F", "Science", "2008-11-23"),
("11", "Harsh Agarwal", "Male", "42", "11", "C", "Science", "1998-03-08"),
("12", "Nikunj Agarwal", "Male", "49", "12", "C", "Commerce", "1998-06-28"),
("13", "Akriti Saxena", "Female", "89", "12", "A", "Science", "2008-11-23"),
("14", "Tani Rastogi", "Female", "82", "12", "A", "Science", "2008-11-23");


-- QUESTION : 1 :    To display all the records form STUDENT table. 

SELECT * FROM Student;

-- QUESTION : 2 :  To display any name and date of birth from the table STUDENT

SELECT Std_Name, BOB FROM Student 
WHERE Std_Name = 'Surekha Joshi';

-- QUESTION : 3 :  To display all students record where percentage is greater of equal to 80 FROM student table.
SELECT * FROM student WHERE percentage >= 80;

-- QUESTION:  4. To display student name, stream and percentage where percentage of student is more than 80
SELECT Std_Name, Stream
FROM student WHERE percentage > 80; 

-- QUESTION :  5. To display all records of science students whose percentage is more than 75 form student table. 
SELECT * 
FROM student
WHERE Stream = "Science" AND percentage>75;
