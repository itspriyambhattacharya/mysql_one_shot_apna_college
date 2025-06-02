CREATE DATABASE xyz_company;
USE xyz_company;
CREATE TABLE employee_info(
id INT PRIMARY KEY,
name VARCHAR(50),
salary INT
);

INSERT INTO employee_info
(id, name, salary)
VALUES
(1, "Adam", 25000),
(2, "Bob", 30000),
(3, "Casy", 40000);

SELECT * 
FROM employee_info;