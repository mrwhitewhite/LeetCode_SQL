use leetcode;

-- show table
SELECT
    *
FROM
    Products;

-- Queries here
SELECT
    product_id,
    10 price
FROM
    Products
GROUP BY
    product_id
HAVING
    MIN(change_date) > DATE('2019-08-16')
UNION
SELECT
    product_id,
    new_price price
FROM
    (
        SELECT
            product_id,
            new_price,
            change_date,
            ROW_NUMBER() OVER(
                PARTITION BY product_id
                ORDER BY
                    change_date DESC
            ) n
        FROM
            Products
        WHERE
            change_date <= DATE('2019-08-16')
    ) t
WHERE
    n = 1