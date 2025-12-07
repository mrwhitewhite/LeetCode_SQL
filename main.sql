use leetcode;

-- show table
SELECT
    *
FROM
    Prices;

SELECT
    *
FROM
    UnitsSold;

-- Queries here
SELECT
    p.product_id,
    IFNULL(
        ROUND(
            SUM(p.price * u.units) / SUM(u.units),
            2
        ),
        0
    ) AS average_price
FROM
    Prices p
    LEFT JOIN UnitsSold u ON (
        (
            u.purchase_date BETWEEN p.start_date
            AND p.end_date
        )
        AND (
            p.product_id = u.product_id
        )
    )
GROUP BY
    product_id