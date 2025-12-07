use leetcode;

-- show table
SELECT
    *
FROM
    Weather;

-- Queries here
SELECT
    Today.id
FROM
    Weather AS Today
    INNER JOIN Weather as Yest ON Today.recordDate = DATE_ADD(Yest.recordDate, INTERVAL 1 DAY)
WHERE
    Today.temperature > Yest.temperature
