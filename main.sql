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
    ROUND(COUNT(contest_id) / (SELECT COUNT(user_id) FROM Users) * 100, 2) percentage
FROM
    Register
    LEFT JOIN Users USING(user_id)
GROUP BY
    contest_id
ORDER BY
    percentage DESC,
    contest_id;
