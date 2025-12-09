use leetcode;

-- show table
SELECT
    *
FROM
    Patients;

-- Queries here
SELECT
    *
FROM
    Patients
WHERE
    LOCATE(" DIAB1", conditions)
    OR SUBSTR(conditions, 1, 5) = "DIAB1"