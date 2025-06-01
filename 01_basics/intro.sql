CREATE database test1;
CREATE database test2;
DROP database test1;

create database college;
use college;

create table student(
id INT PRIMARY KEY,
name VARCHAR(50),
age INT NOT NULL
);

INSERT INTO student
VALUES
(1, "Aman", 26),
(2, "Shraddha", 24);

SELECT * FROM student;