use leetcode;

-- show table
SELECT
    *
FROM
    Logs;

-- Queries here
SELECT
    DISTINCT l1.num ConsecutiveNums
FROM
    Logs l1
    CROSS JOIN Logs l2
    CROSS JOIN Logs l3
WHERE
    (
        -- get 3 consequtive num in single row
        l1.id = l2.id -1
        AND l2.id = l3.id -1
    )
    AND (
        -- make sure 3 conseq number are same
        l1.num = l2.num
        AND l2.num = l3.num
    )