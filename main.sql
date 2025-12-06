use leetcode;

-- show table
SELECT * FROM Customer;

-- Queries here
SELECT name
FROM Customer
WHERE
    id IN (
        SELECT id
        FROM Customer
        WHERE
            referee_id IS NULL
    )
    OR id IN (
        SELECT id
        FROM Customer
        WHERE
            referee_id IS NOT NULL
            AND referee_id != 2
    )