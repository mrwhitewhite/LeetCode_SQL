use leetcode;

-- show table
SELECT
    *
FROM
    Customer;

-- Queries here
WITH t2 AS (
    WITH t AS (
        SELECT
            visited_on,
            SUM(amount) amount,
            ROW_NUMBER() OVER(
                ORDER BY
                    visited_on
            ) n
        FROM
            Customer
        GROUP BY
            visited_on
    )
    SELECT
        n,
        visited_on,
        SUM(amount) OVER(
            ORDER BY
                visited_on ROWS BETWEEN 6 PRECEDING
                AND CURRENT ROW
        ) amount
    FROM
        t
)
SELECT
    visited_on,
    amount,
    ROUND(amount / 7, 2) average_amount
FROM
    t2
WHERE
    n >= 7