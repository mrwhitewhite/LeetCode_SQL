use leetcode;

-- show table
SELECT
    *
FROM
    Students;

SELECT
    *
FROM
    Subjects;

SELECT
    *
FROM
    Examinations;

-- Queries here
SELECT
    student_id,
    student_name,
    subject_name,
    IFNULL(attended_exams, 0) AS attended_exams
FROM
    Students
    CROSS JOIN Subjects
    LEFT JOIN (
        SELECT
            student_id,
            subject_name,
            COUNT(student_id) AS attended_exams
        FROM
            Examinations
        GROUP BY
            student_id,
            subject_name
    ) AS T_count USING(student_id, subject_name)
ORDER BY student_id, subject_name