use leetcode;

-- show table
SELECT
    *
FROM
    Employees;

-- Queries here
SELECT
    e1.employee_id
FROM
    Employees e1
    LEFT JOIN Employees e2 ON e1.manager_id = e2.employee_id
WHERE
    e1.manager_id is NOT NULL
    AND e2.employee_id IS NULL
    AND e1.salary < 30000
ORDER BY
    e1.employee_id