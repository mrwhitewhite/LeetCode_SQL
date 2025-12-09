use leetcode;

-- show table
SELECT
    *
FROM
    Employees;

-- Queries here
WITH r AS (
    SELECT
        reports_to,
        ROUND(AVG(age), 0) average_age,
        COUNT(*) reports_count
    FROM
        Employees
    WHERE
        reports_to IS NOT NULL
    GROUP BY
        reports_to
)
SELECT
    employee_id,
    name,
    reports_count,
    average_age
FROM
    Employees e
    INNER JOIN r ON e.employee_id = r.reports_to
ORDER BY
    employee_id