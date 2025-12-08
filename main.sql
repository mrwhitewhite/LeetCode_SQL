use leetcode;

-- show table
SELECT
    *
FROM
    Logs;

-- Queries here
WITH t AS (
    SELECT
        num num1,
        LAG(num, 1) OVER() num2,
        LAG(num, 2) OVER() num3
    FROM
        Logs
)
SELECT
    DISTINCT num1 ConsecutiveNums
FROM
    t
WHERE
    num1 = num2
    AND num2 = num3