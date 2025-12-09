use leetcode;

-- show table
SELECT
    *
FROM
    Activities;

-- Queries here
SELECT
    sell_date,
    COUNT(sell_date) num_sold,
    GROUP_CONCAT(
        product
        ORDER BY
            product SEPARATOR ","
    ) products
FROM
    (
        SELECT
            *
        FROM
            Activities
        GROUP BY
            sell_date,
            product
    ) Activities
GROUP BY
    sell_date
ORDER BY
    sell_date;