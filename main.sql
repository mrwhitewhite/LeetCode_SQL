use leetcode;

-- show table
SELECT
    *
FROM
    Queue;

-- Queries here
WITH cum AS (
    SELECT
        person_id,
        person_name,
        SUM(weight) OVER(
            ORDER BY
                turn
        ) cum_sum
    FROM
        Queue
)
SELECT
    person_name
FROM
    cum
WHERE
    cum_sum =(
        SELECT
            max(cum_sum)
        FROM
            cum
        WHERE
            cum_sum <= 1000
    )