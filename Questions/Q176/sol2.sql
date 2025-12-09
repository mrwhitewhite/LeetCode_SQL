use leetcode;

-- show table
SELECT
    *
FROM
    Employee;

-- Queries here
SELECT
    (
        SELECT
            salary
        FROM
            Employee
        GROUP BY
            salary
        ORDER BY
            salary DESC
        LIMIT
            1 OFFSET 1
    ) AS SecondHighestSalary

-- use offset with 'limit n offset m' to select mth n consequtive element
-- select (table) as column name will produce null even the table is empty