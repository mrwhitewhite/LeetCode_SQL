use leetcode;

-- show table
SELECT * FROM Employees;

SELECT * FROM EmployeeUNI;

-- Queries here
SELECT unique_id, name  FROM Employees
LEFT JOIN EmployeeUNI
ON EmployeeUNI.id = Employees.id