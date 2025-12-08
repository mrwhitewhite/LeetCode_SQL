use leetcode;

-- show table
SELECT
    *
FROM
    Products;

-- Queries here
WITH new AS (
    SELECT
        product_id,
        MIN(change_date) min_date,
        MAX(change_date) max_date
    FROM
        Products
    WHERE
        change_date <= DATE("2019-08-16")
    GROUP BY
        product_id
) -- get product id with new price changed before 2019-08-16
SELECT
    product_id,
    IF(
        new.min_date IS NULL,
        10,
        new_price
    ) price
FROM
    Products p
    LEFT JOIN new USING(product_id)
WHERE
    p.change_date = new.max_date
    OR new.min_date IS NULL
GROUP BY
    -- remove duplicate which occur on multiple NULL
    product_id,
    price