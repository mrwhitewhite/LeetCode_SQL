use leetcode;

-- show table
SELECT
    *
FROM
    Users;

-- Queries here
SELECT
    user_id,
    CONCAT(
        UPPER(LEFT(name, 1)),
        LOWER(mid(name, 2))
    ) name
FROM
    Users
ORDER BY
    user_id