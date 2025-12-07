use leetcode;

-- show table
SELECT
    *
FROM
    Teacher;

-- Queries here
SELECT
    teacher_id,
    COUNT(DISTINCT subject_id) cnt
FROM
    Teacher
GROUP BY
    teacher_id