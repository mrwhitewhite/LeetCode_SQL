use leetcode;

-- show table
SELECT
    *
FROM
    Person;

-- Queries here
DELETE FROM
    Person
WHERE
    id NOT IN (
        -- need double select because we are deleting the table that are woring on it
        SELECT
            id
        FROM
            (
                SELECT
                    MIN(id) id
                FROM
                    Person
                GROUP BY
                    Email
            ) t
    )