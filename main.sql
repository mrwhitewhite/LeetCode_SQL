use leetcode;

-- show table
SELECT * FROM Views;

-- Queries here
SELECT DISTINCT (author_id) AS "id"
FROM Views
WHERE
    author_id = viewer_id
ORDER BY author_id;