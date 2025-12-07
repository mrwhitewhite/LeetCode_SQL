use leetcode;

-- show table
SELECT
    *
FROM
    Employee;

-- Queries here
WITH t AS (
    SELECT
        employee_id,
        MAX(primary_flag) flag
    FROM
        Employee
    GROUP BY
        employee_id
)
SELECT
    e.employee_id,
    e.department_id
FROM
    Employee e
    INNER JOIN t ON t.employee_id = e.employee_id
    AND t.flag = e.primary_flag