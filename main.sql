use leetcode;

-- show table
SELECT * FROM Customer;

-- Queries here
SELECT name
FROM Customer
WHERE
    referee_id IS NULL
    OR referee_id != 2;