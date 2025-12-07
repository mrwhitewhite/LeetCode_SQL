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
    Employee e
    INNER JOIN (
        SELECT
            managerId
        FROM
            Employee
        GROUP BY
            managerId
        HAVING
            COUNT(managerId) >= 5
    ) as m ON m.managerId = e.Id -- inner join the full table is expensive, filter be4 join
