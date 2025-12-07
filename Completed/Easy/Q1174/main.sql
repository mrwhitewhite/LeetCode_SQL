use leetcode;

-- show table
SELECT
    *
FROM
    Delivery;

-- Queries here
SELECT
    ROUND(
        AVG(order_date = customer_pref_delivery_date) * 100,
        2
    ) immediate_percentage
FROM
    Delivery d
    INNER JOIN (
        SELECT
            customer_id,
            MIN(order_date) order_date
        FROM
            Delivery d
        GROUP BY
            customer_id
    ) T USING(customer_id, order_date)
