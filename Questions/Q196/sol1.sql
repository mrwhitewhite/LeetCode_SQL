use leetcode;

-- show table
SELECT
    *
FROM
    Person;

-- Queries here
WITH dup AS (
    SELECT
        Id,
        Email,
        ROW_NUMBER() OVER(
            PARTITION BY Email
            ORDER BY
                Id
        ) n
    FROM
        Person
)
DELETE FROM
    Person
WHERE
    id IN(
        SELECT
            Id
        FROM
            dup
        WHERE
            n >= 2
    )