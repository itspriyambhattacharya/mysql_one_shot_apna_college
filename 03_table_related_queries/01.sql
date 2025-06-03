USE college2;

SET SQL_SAFE_UPDATES = 0;

UPDATE student
SET grade = "O"
WHERE grade = "A";

SELECT *
FROM student;

UPDATE student
SET marks = marks +1;

DELETE FROM student
WHERE marks < 33;