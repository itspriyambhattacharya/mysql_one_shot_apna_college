CREATE DATABASE registration_db;
USE registration_db;
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    yearly_income_id INT DEFAULT NULL,
    gender_id INT DEFAULT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE users
CHANGE password_hash password VARCHAR(50) NOT NULL;

ALTER TABLE users
CHANGE gender_id gender INT NOT NULL;

ALTER TABLE users
CHANGE yearly_income_id yrIncome INT NOT NULL;

SELECT *
FROM users;
