use leetcode;

-- show table
SELECT * FROM Products;

-- Queries here
SELECT product_id FROM Products
WHERE low_fats='Y' and recyclable='Y';
