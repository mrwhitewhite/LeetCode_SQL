use leetcode;

-- show table
SELECT
    *
FROM
    Users;

SELECT
    *
FROM
    Register;

-- Queries here
SELECT
    contest_id,
    ROUND(COUNT(contest_id) / n * 100, 2) percentage
FROM
    Register
    LEFT JOIN Users USING(user_id)
    CROSS JOIN (
        SELECT
            COUNT(DISTINCT user_id) n
        FROM
            users
    ) as tot
GROUP BY
    contest_id,
    n
ORDER BY
    percentage DESC,
    contest_id;