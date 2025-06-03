USE college2;

# Get names of all students who scored more than class average.
SELECT name
FROM student
WHERE marks > (
SELECT AVG(marks)
FROM student
);