DROP DATABASE leetcode;
CREATE DATABASE IF NOT EXISTS leetcode DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;

USE leetcode;

-- SCHEMA here
Create table If Not Exists Transactions (id int, country varchar(4), state enum('approved', 'declined'), amount int, trans_date date);
TRUNCATE TABLE Transactions; -- Optional: Clears any existing data if the table already exists

INSERT INTO Transactions (id, country, state, amount, trans_date) VALUES
(121, 'US', 'approved', 1000, '2018-12-18'),
(122, 'US', 'declined', 2000, '2018-12-19'),
(123, 'US', 'approved', 2000, '2019-01-01'),
(124, NULL, 'approved', 2000, '2019-01-07');