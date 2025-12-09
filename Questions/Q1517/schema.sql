DROP DATABASE leetcode;

CREATE DATABASE IF NOT EXISTS leetcode DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;

USE leetcode;

-- SCHEMA here
Create table If Not Exists Users (user_id int, name varchar(30), mail varchar(50));

TRUNCATE TABLE Users;

-- Optional: Clears any existing data
INSERT INTO
    Users (user_id, name, mail)
VALUES
    (296, 'Gavriel', 'Gavriel5bpr@leetcode.com'),
    (121, 'Ezra', 'EzraX'),
    (39, 'Dalia', 'DaliapCvpKJe7NU'),
    (32, 'Gavriel', '-Gavriel@leetcode.com'),
    (694, 'Benjamin', 'Benjamin._2@leetcode.com'),
    (287, 'Adam', '-Adam@leetcode.com'),
    (373, 'Yaffah', 'Yaffah_-w51KKjZ@leetcode.com'),
    (430, 'Eliyahu', '-Eliyahu@leetcode.com'),
    (471, 'Levi', 'Levi_.r@leetcode.com'),
    (784, 'Yehudah', 'Yehudah._Il@leetcode.com');