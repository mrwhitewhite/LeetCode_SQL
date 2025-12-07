use leetcode;

-- show table
SELECT
    *
FROM
    Employee;

-- Queries here
SELECT
    name
FROM
    (
        SELECT
            managerId,
            COUNT(id) AS report_count
        FROM
            Employee
        WHERE
            managerId IS NOT NULL
        GROUP BY
            managerId
        HAVING
            report_count >= 5
    ) as T_id
    INNER JOIN Employee e ON T_id.managerId = e.id