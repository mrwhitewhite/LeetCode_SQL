use leetcode;

-- show table
SELECT
    *
FROM
    MyNumbers;

-- Queries here
WITH t AS (
    SELECT
        num,
        COUNT(num) n
    FROM
        MyNumbers
    GROUP BY
        num
)
SELECT
    MAX(num) num
FROM
    t
WHERE
    n = 1