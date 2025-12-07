use leetcode;

-- show table
SELECT
    *
FROM
    Delivery;

-- Queries here
SELECT
    ROUND(AVG(isImmediate) * 100, 2) immediate_percentage
FROM
    (
        SELECT
            customer_id,
            order_date,
            order_date = customer_pref_delivery_date "isImmediate",
            ROW_NUMBER() OVER(
                PARTITION BY customer_id
                ORDER BY
                    order_date
            ) = 1 mask
        FROM
            Delivery d
        ORDER BY
            customer_id,
            order_date
    ) t
WHERE
    mask = 1