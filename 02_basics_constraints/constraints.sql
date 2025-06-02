CREATE DATABASE college2;
USE college2;

CREATE TABLE student(
rollNo INT PRIMARY KEY,
name VARCHAR(50),
marks INT ,
grade VARCHAR(5),
city VARCHAR(20)
);

INSERT INTO student
(rollNo, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "vhetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

SELECT *
FROM student;

# The SELECT Command

SELECT name, marks
FROM student
WHERE marks >=80;

SELECT name, marks, city
FROM student
WHERE marks >=80 AND city = "Mumbai";

SELECT AVG(marks) "Average Marks"
FROM student;