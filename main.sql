use leetcode;

-- show table
SELECT
    *
FROM
    Customer;

SELECT
    *
FROM
    Product;

-- Queries here
WITH c3 AS (
    WITH c2 AS (
        WITH c1 AS (
            SELECT
                DISTINCT customer_id
            FROM
                Customer
        )
        SELECT
            *
        FROM
            c1
            CROSS JOIN Product
    )
    SELECT
        DISTINCT c2.customer_id,
        1 AS mask
    FROM
        c2
        LEFT JOIN Customer c ON c.customer_id = c2.customer_id
        AND c.product_key = c2.product_key
    WHERE
        c.customer_id IS NULL
)
SELECT
    DISTINCT customer_id
FROM
    c3
    RIGHT JOIN Customer c USING(customer_id)
WHERE
    mask IS NULL