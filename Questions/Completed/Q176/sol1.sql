use leetcode;

-- show table
SELECT
    *
FROM
    Employee;

-- Queries here
(
    WITH t AS (
        SELECT
            salary,
            DENSE_RANK() OVER(
                ORDER BY
                    salary DESC
            ) n
        FROM
            Employee
    )
    SELECT
        salary SecondHighestSalary
    FROM
        t
    WHERE
        n = 2
)
UNION
ALL (
    SELECT
        null SecondHighestSalary
)
LIMIT
    1