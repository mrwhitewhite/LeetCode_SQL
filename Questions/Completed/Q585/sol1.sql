use leetcode;

-- show table
SELECT
    *
FROM
    Insurance;

-- Queries here
WITH dup_tiv_2015 AS (
    SELECT
        tiv_2015
    FROM
        Insurance
    GROUP BY
        tiv_2015
    HAVING
        COUNT(tiv_2015) > 1
),
unique_lon_lat AS (
    SELECT
        lat,
        lon
    FROM
        Insurance
    GROUP BY
        lat,
        lon
    HAVING
        COUNT(*) = 1
)
SELECT
    ROUND(SUM(tiv_2016), 2) tiv_2016
FROM
    Insurance
WHERE
    (lon, lat) IN (
        SELECT
            lon,
            lat
        FROM
            unique_lon_lat
    )
    AND tiv_2015 IN (
        SELECT
            tiv_2015
        FROM
            dup_tiv_2015
    )