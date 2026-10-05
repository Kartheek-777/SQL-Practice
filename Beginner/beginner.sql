USE sql_practice;


SELECT COUNT(*) AS total_students
FROM students;


SELECT SUM(marks) AS total_marks
FROM students;


SELECT AVG(marks) AS average_marks
FROM students;


SELECT MAX(marks) AS highest_marks
FROM students;


SELECT MIN(marks) AS lowest_marks
FROM students;


SELECT department, COUNT(*) AS total_students
FROM students
GROUP BY department;


SELECT department, AVG(marks) AS average_marks
FROM students
GROUP BY department;


SELECT department, MAX(marks) AS highest_marks
FROM students
GROUP BY department;


SELECT department, COUNT(*) AS total_students
FROM students
GROUP BY department
HAVING COUNT(*) > 1;


SELECT *
FROM students
WHERE name LIKE 'A%';


SELECT *
FROM students
WHERE name LIKE '%a';


SELECT *
FROM students
WHERE name LIKE '%ri%';


SELECT *
FROM students
WHERE department IN ('CSE', 'AIML');


SELECT *
FROM students
WHERE marks BETWEEN 70 AND 90;


SELECT *
FROM students
WHERE age BETWEEN 20 AND 22;


SELECT
    name,
    marks,
    CASE
        WHEN marks >= 90 THEN 'A'
        WHEN marks >= 80 THEN 'B'
        WHEN marks >= 70 THEN 'C'
        ELSE 'D'
    END AS grade
FROM students;


SELECT
    name,
    marks,
    CASE
        WHEN marks >= 40 THEN 'Pass'
        ELSE 'Fail'
    END AS result
FROM students;


CREATE TABLE departments (
    department_id INT,
    department_name VARCHAR(30)
);


INSERT INTO departments VALUES
(1, 'CSE'),
(2, 'AIML'),
(3, 'ECE');


SELECT
    students.name,
    students.department,
    departments.department_id
FROM students
INNER JOIN departments
ON students.department = departments.department_name;


SELECT
    students.name,
    students.department,
    departments.department_id
FROM students
LEFT JOIN departments
ON students.department = departments.department_name;


SELECT
    department,
    COUNT(*) AS total_students,
    AVG(marks) AS average_marks
FROM students
GROUP BY department
HAVING AVG(marks) > 80;


SELECT *
FROM students
WHERE marks = (
    SELECT MAX(marks)
    FROM students
);


SELECT *
FROM students
WHERE marks > (
    SELECT AVG(marks)
    FROM students
);