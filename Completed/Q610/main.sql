use leetcode;

-- show table
SELECT
    *
FROM
    Triangle;

-- Queries here
SELECT
    *,
    IF(
        x + y > z
        AND x + z > y
        AND y + z > x,
        'Yes',
        'No'
    ) triangle
FROM
    Triangle