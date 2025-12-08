use leetcode;

-- show table
SELECT
    *
FROM
    Accounts;

-- Queries here
WITH t_count AS (
    SELECT
        category,
        COUNT(category) accounts_count
    FROM
        (
            SELECT
                IF(
                    income < 20000,
                    "Low Salary",
                    IF(
                        income > 50000,
                        "High Salary",
                        "Average Salary"
                    )
                ) category
            FROM
                Accounts
        ) t_freq
    GROUP BY
        category
),
t_cat AS (
    SELECT
        "High Salary" category
    UNION
    SELECT
        "Average Salary" category
    UNION
    SELECT
        "Low Salary" category
)
SELECT
    category,
    IFNULL(accounts_count, 0) accounts_count
FROM
    t_cat
    LEFT JOIN t_count USING(category)