--  Total number of customers
SELECT COUNT(*) AS total_customers FROM Customers;

-- Count orders per customer
SELECT customer_id, COUNT(order_id) AS total_orders
FROM Orders
GROUP BY customer_id;

--  Total sales amount from Payment table
SELECT SUM(amount) AS total_sales FROM Payment;

--  Average payment amount
SELECT AVG(amount) AS average_payment FROM Payment;

--  Maximum and Minimum payment amounts
SELECT MAX(amount) AS highest_payment, MIN(amount) AS lowest_payment FROM Payment;

--  Total quantity sold per product
SELECT product_id, SUM(quantity) AS total_quantity_sold
FROM OrderDetails
GROUP BY product_id;

--  Count distinct categories from Products
SELECT COUNT(DISTINCT category_id) AS unique_categories FROM Products;

--  Group products by category and get average price per category
SELECT category_id, ROUND(AVG(price), 2) AS avg_price
FROM Products
GROUP BY category_id;

-- Total sales per payment method
SELECT payment_method, SUM(amount) AS total_sales
FROM Payment
GROUP BY payment_method;

--  Filter groups using HAVING: show products with total quantity sold > 2
SELECT product_id, SUM(quantity) AS total_quantity_sold
FROM OrderDetails
GROUP BY product_id
HAVING SUM(quantity) > 2;

--  Group by multiple columns: order count per customer per date
SELECT customer_id, order_date, COUNT(order_id) AS order_count
FROM Orders
GROUP BY customer_id, order_date
ORDER BY customer_id, order_date;

--  Count orders per day (date-wise)
SELECT order_date, COUNT(order_id) AS orders_on_day
FROM Orders
GROUP BY order_date
ORDER BY order_date;
