use leetcode;

-- show table
SELECT
    *
FROM
    Employee;

SELECT
    *
FROM
    Department;

-- Queries here
WITH t AS (
    SELECT
        d.name Department,
        e.name Employee,
        e.salary Salary,
        DENSE_RANK() OVER(
            PARTITION BY d.name
            ORDER BY
                e.salary DESC
        ) n
    FROM
        Employee e
        LEFT JOIN Department d ON e.departmentId = d.id
)
SELECT
    Department,
    Employee,
    Salary
FROM
    t
WHERE
    n <= 3