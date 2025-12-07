use leetcode;

-- show table
SELECT
    *
FROM
    Sales;

-- Queries here
WITH m AS (
    SELECT
        product_id,
        MIN(year) first_year
    FROM
        Sales
    GROUP BY
        product_id
)
SELECT
    product_id,
    first_year,
    quantity,
    price
FROM
    Sales
    LEFT JOIN m USING(product_id)
WHERE
    year = first_year