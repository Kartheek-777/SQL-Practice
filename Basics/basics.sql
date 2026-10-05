CREATE DATABASE sql_practice;

USE sql_practice;


CREATE TABLE students (
    id INT,
    name VARCHAR(50),
    age INT,
    department VARCHAR(30),
    marks INT
);


INSERT INTO students VALUES
(1, 'Rahul', 21, 'CSE', 85),
(2, 'Anu', 22, 'AIML', 92),
(3, 'Kiran', 20, 'ECE', 76),
(4, 'Priya', 21, 'CSE', 88),
(5, 'Arjun', 23, 'AIML', 95);


SELECT * FROM students;


SELECT name, department, marks
FROM students;


SELECT *
FROM students
WHERE marks > 80;


SELECT *
FROM students
WHERE department = 'CSE';


SELECT *
FROM students
WHERE age = 21;


SELECT *
FROM students
ORDER BY marks;


SELECT *
FROM students
ORDER BY marks DESC;


SELECT DISTINCT department
FROM students;


SELECT *
FROM students
LIMIT 3;


UPDATE students
SET marks = 90
WHERE id = 1;


SELECT *
FROM students;


DELETE FROM students
WHERE id = 5;


SELECT *
FROM students;


SELECT *
FROM students
WHERE marks >= 80
AND department = 'CSE';


SELECT *
FROM students
WHERE department = 'CSE'
OR department = 'AIML';