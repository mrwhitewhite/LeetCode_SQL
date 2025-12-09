use leetcode;

-- show table
SELECT
    *
FROM
    Followers;

-- Queries here
SELECT
    user_id,
    COUNT(*) followers_count
FROM
    Followers
GROUP BY
    user_id
ORDER BY
    user_id