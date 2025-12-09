use leetcode;

-- show table
SELECT
    *
FROM
    Products;

SELECT
    *
FROM
    Orders;

-- Queries here
SELECT
    product_name,
    unit
FROM
    Products
    RIGHT JOIN (
        SELECT
            product_id,
            SUM(unit) unit
        FROM
            Orders
        WHERE
            YEAR(order_date) = 2020
            AND MONTH(order_date) = 2
        GROUP BY
            product_id
        HAVING
            unit >= 100
    ) t USING(product_id)