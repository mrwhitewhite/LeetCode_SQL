use leetcode;

-- show table
SELECT
    *
FROM
    Signups;

SELECT
    *
FROM
    Confirmations;

-- Queries here
SELECT
    user_id,
    IFNULL(ROUND(SUM(action = "confirmed") / COUNT(action), 2), 0) AS confirmation_rate
FROM
    Signups s
    LEFT JOIN Confirmations c USING(user_id)
GROUP BY
    user_id
