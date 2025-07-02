-- INNER JOIN: Customers with their Orders
SELECT c.customer_id, c.name, o.order_id, o.order_date
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id;

-- LEFT JOIN: All customers with orders if they have any
SELECT c.customer_id, c.name, o.order_id, o.order_date
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id;

-- RIGHT JOIN: All orders with customer info if available
SELECT c.customer_id, c.name, o.order_id, o.order_date
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;

-- FULL OUTER JOIN: All customers and all orders, matching where possible
SELECT c.customer_id, c.name, o.order_id, o.order_date
FROM Customers c
FULL OUTER JOIN Orders o ON c.customer_id = o.customer_id;

--  Joining three tables: Customers, Orders, Payments
SELECT c.name, o.order_id, o.order_date, p.amount, p.payment_method
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id
INNER JOIN Payment p ON o.order_id = p.order_id;

--  Using WHERE with JOINs: Customers who placed orders after 2025-06-10
SELECT c.name, o.order_id, o.order_date
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.order_date > '2025-06-10';

--  Aggregation with JOIN: Total payments per customer
SELECT c.customer_id, c.name, SUM(p.amount) AS total_spent
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id
INNER JOIN Payment p ON o.order_id = p.order_id
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC;

--  CROSS JOIN example: All combinations of Customers and Categories
SELECT c.name, cat.category_name
FROM Customers c
CROSS JOIN Categories cat
LIMIT 10;

-- 9️⃣ Self-Join example: Customers with the same city (assuming address as city)
SELECT c1.name AS customer_1, c2.name AS customer_2, c1.address
FROM Customers c1
INNER JOIN Customers c2 ON c1.address = c2.address AND c1.customer_id < c2.customer_id;

-- Checking NULL joins: Customers with orders showing NULL if no order
SELECT c.customer_id, c.name, o.order_id
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
