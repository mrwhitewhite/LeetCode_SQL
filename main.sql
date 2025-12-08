use leetcode;

-- show table
SELECT
    *
FROM
    Accounts;

-- Queries here
WITH t2 AS (
    WITH t1 AS (
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
    )
    SELECT
        category,
        COUNT(category) accounts_count
    FROM
        t1
    GROUP BY
        category
    UNION
    ALL
    SELECT
        "High Salary" category,
        0 accounts_count
    UNION
    ALL
    SELECT
        "Average Salary" category,
        0 accounts_count
    UNION
    ALL
    SELECT
        "Low Salary" category,
        0 accounts_count
)
SELECT
    category,
    MAX(accounts_count) accounts_count
FROM
    t2
GROUP BY
    category