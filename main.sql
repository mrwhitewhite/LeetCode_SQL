use leetcode;

-- show table
SELECT
    *
FROM
    Employee;

SELECT
    *
FROM
    Bonus;

-- Queries here
SELECT
    name,
    bonus
FROM
    Employee
    LEFT JOIN Bonus USING(empId)
WHERE
    bonus IS NULL
    OR bonus < 1000