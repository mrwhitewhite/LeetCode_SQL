DROP DATABASE leetcode;

CREATE DATABASE IF NOT EXISTS leetcode DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;

USE leetcode;

-- SCHEMA here
CREATE TABLE IF NOT EXISTS Users (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(255)
);

TRUNCATE TABLE Users;

-- Optional: Clears any existing data if the table already exists
INSERT INTO
    Users (user_id, user_name)
VALUES
    (631, 'Freida'),
    (112, 'Rachel'),
    (392, 'Naftali'),
    (674, 'Tikvah'),
    (543, 'Adam'),
    (675, 'Yehudah'),
    (447, 'Moshe'),
    (784, 'Naftali'),
    (268, 'Freida');

CREATE TABLE IF NOT EXISTS Register (
    contest_id INT,
    user_id INT,
    PRIMARY KEY (contest_id, user_id)
);

TRUNCATE TABLE Register;

-- Optional: Clears any existing data if the table already exists
INSERT INTO
    Register (contest_id, user_id)
VALUES
    (187, 674),
    (187, 631),
    (187, 784),
    (187, 447);