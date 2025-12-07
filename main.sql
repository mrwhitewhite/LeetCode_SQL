use leetcode;

-- show table
SELECT
    *
FROM
    Project;

SELECT
    *
FROM
    Employee;

-- Queries here
SELECT
    project_id,
    ROUND(AVG(experience_years), 2) average_years
FROM
    Project p
    LEFT JOIN Employee e USING(employee_id)
GROUP BY
    project_id
