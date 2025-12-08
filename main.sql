use leetcode;

-- show table
SELECT
    *
FROM
    Seat;

-- Queries here
WITH t2 AS (
    SELECT
        id,
        IF(
            id % 2 = 0,
            even,
            odd
        ) student_changed,
        student
    FROM
        (
            SELECT
                id,
                student,
                LAG(student) OVER(ORDER BY id) even,
                LEAD(student) OVER(ORDER BY id) odd
            FROM
                Seat
        ) t
)
SELECT
    id,
    IFNULL(student_changed, student) student
FROM
    t2