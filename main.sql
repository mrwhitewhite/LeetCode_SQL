use leetcode;

-- show table
SELECT
    *
FROM
    Visits;

SELECT
    *
FROM
    Transactions;

-- Queries here
SELECT
    customer_id,
    COUNT(customer_id) AS count_no_trans
FROM
    Visits
WHERE
    Visits.visit_id NOT IN (
        SELECT
            DISTINCT(visit_id)
        FROM
            Transactions
    )
GROUP BY
    customer_id
