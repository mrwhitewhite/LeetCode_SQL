CREATE DATABASE IF NOT EXISTS leetcode DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;

USE leetcode;

-- SCHEMA here
DROP TABLE IF EXISTS Employee;
Create table If Not Exists Employee (id int, name varchar(255), department varchar(255), managerId int);
Truncate table Employee;
TRUNCATE TABLE Employee; -- Optional: Clears any existing data if the table already exists

INSERT INTO Employee (id, name, department, managerId) VALUES
(101, 'John', 'A', NULL),
(102, 'Dan', 'A', 101),
(103, 'James', 'A', 101),
(104, 'Amy', 'A', 101),
(105, 'Anne', 'A', 101),
(106, 'Ron', 'B', 101),
(111, 'John', 'A', NULL),
(112, 'Dan', 'A', 111),
(113, 'James', 'A', 111),
(114, 'Amy', 'A', 111),
(115, 'Anne', 'A', 111),
(116, 'Ron', 'B', 111);