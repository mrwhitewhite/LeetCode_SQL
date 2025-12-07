DROP DATABASE leetcode;

CREATE DATABASE IF NOT EXISTS leetcode DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;

USE leetcode;

-- SCHEMA here
Create table If Not Exists Activity (
    player_id int,
    device_id int,
    event_date date,
    games_played int
);

Truncate table Activity;

TRUNCATE TABLE Activity;

-- Clear any existing data
INSERT INTO
    Activity (player_id, device_id, event_date, games_played)
VALUES
    (1, 2, '2016-02-29', 5),
    (1, 2, '2016-03-01', 6),
    (2, 3, '2017-06-25', 1),
    (3, 1, '2016-03-02', 0),
    (3, 4, '2018-07-03', 5);