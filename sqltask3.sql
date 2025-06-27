--  Basic SELECT all columns
SELECT * FROM Customers;

--  SELECT specific columns
SELECT name, email FROM Customers;

--  Filtering rows with WHERE
SELECT * FROM Products
WHERE price > 100;

--  Using AND and OR
SELECT * FROM Products
WHERE price > 50 AND stock < 100;

SELECT * FROM Products
WHERE category_id = 1 OR category_id = 2;

--  Using LIKE for pattern matching
SELECT * FROM Customers
WHERE email LIKE '%example.com';

--  Using BETWEEN for ranges
SELECT * FROM Products
WHERE price BETWEEN 20 AND 100;

--  Sorting results
SELECT * FROM Orders
ORDER BY order_date DESC;

--  Limiting output rows
SELECT * FROM Orders
ORDER BY order_date DESC
LIMIT 5;

--  Using aliasing for clarity
SELECT name AS customer_name, email AS customer_email
FROM Customers;

--  Using DISTINCT to remove duplicates
SELECT DISTINCT category_id FROM Products;

--  Using IN for multiple matching values
SELECT * FROM Products
WHERE category_id IN (1, 2, 3);

--  Join Customers with Orders
SELECT c.name, o.order_id, o.order_date
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
ORDER BY o.order_date DESC
LIMIT 10;
