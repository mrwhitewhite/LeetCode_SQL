use leetcode;

-- show table
SELECT
    *
FROM
    cinema;

-- Queries here
SELECT
    *
FROM
    cinema
WHERE
    id % 2 = 1
    AND description != 'boring'
ORDER BY rating DESC
