CREATE DATABASE IF NOT EXISTS joins_prac;
USE joins_prac;
CREATE TABLE IF NOT EXISTS student(
sid VARCHAR(4),
sname VARCHAR(45) NOT NULL,
PRIMARY KEY(sid)
);
CREATE TABLE IF NOT EXISTS course(
cid VARCHAR(4),
cname VARCHAR(45) UNIQUE NOT NULL,
stuID VARCHAR(4) NOT NULL,
PRIMARY KEY(cid),
FOREIGN KEY(stuID) REFERENCES student(sid)
ON DELETE CASCADE
ON UPDATE CASCADE
); 

INSERT INTO student
(sid, sname)
VALUES
("S101", "Adam");

INSERT INTO student
(sid, sname)
VALUES
("S102", "Bob"),
("S103", "Casey");

INSERT INTO course
(cid, cname, stuID)
VALUES
("C100", "English", "S102");

INSERT INTO course
(cid, cname, stuID)
VALUES
("C101", "Mathematics", "S101"),
("C102", "Science", "S103"),
("C103", "Computer Science", "S102");

SELECT * 
FROM student s
INNER JOIN course c
ON s.sid = c.stuId;

SELECT sname AS "student name"
FROM student s
INNER JOIN course c
ON s.sid = c.stuId;