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
SELECT
    customer_id
FROM
    (
        SELECT
            *
        FROM
            Customer
        GROUP BY
            customer_id,
            product_key
    ) t
GROUP BY
    customer_id
HAVING
    COUNT(customer_id) = (
        SELECT
            COUNT(product_key)
        FROM
            Product
    );