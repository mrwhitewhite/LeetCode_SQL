use leetcode;

-- show table
SELECT
    *
FROM
    Users;

-- Queries here
SELECT
    user_id,
    name,
    mail
FROM
    Users
WHERE
    REGEXP_LIKE(mail, '^[a-zA-Z][a-zA-Z_0-9.-]*@leetcode\\.com$', 'c')