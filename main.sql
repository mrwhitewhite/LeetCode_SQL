use leetcode;

-- show table
SELECT
    *
FROM
    Products;

-- Queries here
WITH p AS (
    SELECT
        DISTINCT product_id
    FROM
        Products
),
new AS (
    WITH d AS (
        SELECT
            product_id,
            MAX(change_date) date
        FROM
            Products
        WHERE
            change_date <= DATE("2019-08-16")
        GROUP BY
            product_id
    )
    SELECT
        p.product_id,
        p.new_price price
    FROM
        Products p
        INNER JOIN d ON p.product_id = d.product_id
        AND p.change_date = d.date
)
SELECT
    product_id,
    IFNULL(new.price, 10) price
FROM
    p
    LEFT JOIN new USING(product_id);