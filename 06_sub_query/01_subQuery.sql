USE college2;

# Get names of all students who scored more than class average.
SELECT name
FROM student
WHERE marks > (
SELECT AVG(marks)
FROM student
);

# Find names of all students with even roll number.
SELECT name, rollNo
FROM student
WHERE  rollNo % 2 =0;

SELECT *
FROM student;

# Find max marks from students of Delhi.
SELECT MAX(marks)
FROM student
WHERE city = "Delhi";

SELECT MAX(marks)
FROM (SELECT * FROM student WHERE city = "Delhi") temp;