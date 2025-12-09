use leetcode;

-- show table
SELECT
    *
FROM
    Transactions;

-- Queries here
SELECT
    DATE_FORMAT(trans_date, '%Y-%m') month,
    country,
    COUNT(*) trans_count,
    SUM(state = "approved") approved_count,
    SUM(amount) trans_total_amount,
    SUM(IF(state = "approved", amount, 0)) approved_total_amount
FROM
    Transactions t
GROUP BY
    month,
    country
