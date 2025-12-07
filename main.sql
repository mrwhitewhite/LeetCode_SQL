use leetcode;

-- show table
SELECT
    *
FROM
    Courses;

-- Queries here
SELECT
    class
FROM
    Courses
GROUP BY
    class
HAVING COUNT(student) >= 5