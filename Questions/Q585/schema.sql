DROP DATABASE leetcode;

CREATE DATABASE IF NOT EXISTS leetcode DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;

USE leetcode;

-- SCHEMA here
CREATE TABLE IF NOT EXISTS Insurance (
    pid INT PRIMARY KEY,
    tiv_2015 DECIMAL(10, 2),
    -- Total Insurance Value 2015
    tiv_2016 DECIMAL(10, 2),
    -- Total Insurance Value 2016
    lat DECIMAL(4, 2),
    -- Latitude
    lon DECIMAL(4, 2) -- Longitude
);

TRUNCATE TABLE Insurance;

-- Optional: Clears any existing data
INSERT INTO
    Insurance (pid, tiv_2015, tiv_2016, lat, lon)
VALUES
    (1, 224.17, 952.73, 32.4, 20.2),
    (2, 224.17, 900.66, 52.4, 32.7),
    (3, 824.61, 645.13, 72.4, 45.2),
    (4, 424.32, 323.66, 12.4, 7.7),
    (5, 424.32, 282.90, 12.4, 7.7),
    (6, 625.05, 243.53, 52.5, 32.8),
    (7, 424.32, 968.94, 72.5, 45.3),
    (8, 624.46, 714.13, 12.5, 7.8),
    (9, 425.49, 463.85, 32.5, 20.3),
    (10, 624.46, 776.85, 12.4, 7.7),
    (11, 624.46, 692.71, 72.5, 45.3),
    (12, 225.93, 933.00, 12.5, 7.8),
    (13, 824.61, 786.86, 32.6, 20.3),
    (14, 824.61, 935.34, 52.6, 32.8);