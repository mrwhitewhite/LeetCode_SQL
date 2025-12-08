use leetcode;

-- show table
SELECT
    *
FROM
    Queue;

-- Queries here
SELECT
    DISTINCT LAST_VALUE(person_name) OVER(
        ORDER BY
            cum_sum ASC ROWS BETWEEN UNBOUNDED PRECEDING
            AND UNBOUNDED FOLLOWING
    ) person_name
FROM
    (
        SELECT
            person_name,
            SUM(weight) OVER(
                ORDER BY
                    turn
            ) cum_sum
        FROM
            Queue
    ) cum_sum
WHERE
    cum_sum <= 1000