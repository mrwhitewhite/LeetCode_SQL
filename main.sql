use leetcode;

-- show table
SELECT
    *
FROM
    Activity;

-- Queries here
SELECT
    activity_date day,
    COUNT(DISTINCT user_id) active_users
FROM
    Activity
WHERE
    activity_date BETWEEN DATE(DATE_SUB("2019-07-27", INTERVAL 29 DAY))
    AND DATE("2019-07-27")
GROUP BY
    activity_date