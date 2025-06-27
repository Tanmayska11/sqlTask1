-- -- Create database
-- CREATE DATABASE sqlTask1;



-- Customers Table
CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    address TEXT
);

-- Categories Table
CREATE TABLE Categories (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

-- Products Table
CREATE TABLE Products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    price NUMERIC(10, 2),
    stock INT,
    category_id INT REFERENCES Categories(category_id)
);

-- Orders Table
CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES Customers(customer_id),
    order_date DATE
);

-- OrderDetails Table (junction table for many-to-many)
CREATE TABLE OrderDetails (
    order_id INT,
    product_id INT,
    quantity INT,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Payment Table
CREATE TABLE Payment (
    payment_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES Orders(order_id),
    amount NUMERIC(10, 2),
    payment_method VARCHAR(50),
    payment_date DATE
);



-- Insert into Customers
INSERT INTO Customers (name, email, phone, address) VALUES
('Tanmay K', 'tanmay@example.com', '1111111111', 'Nashik'),
('Swapnil K', 'swapnil@example.com', '2222222222', 'Pune'),
('Riya Shah', 'riya@example.com', '3333333333', 'Mumbai'),
('Kunal Patel', 'kunal@example.com', '4444444444', 'Delhi'),
('Priya Sinha', 'priya@example.com', '5555555555', 'Bangalore'),
('Rahul Mehra', 'rahul@example.com', '6666666666', 'Hyderabad'),
('Neha Agarwal', 'neha@example.com', '7777777777', 'Ahmedabad'),
('Amit Sharma', 'amit@example.com', '8888888888', 'Surat'),
('Divya Joshi', 'divya@example.com', '9999999999', 'Chennai'),
('Arjun Verma', 'arjun@example.com', '1010101010', 'Kolkata'),
('Sneha K', NULL, '1212121212', NULL),
('Manav R', 'manav@example.com', NULL, 'Pune'),
('Sakshi T', 'sakshi@example.com', '1313131313', NULL),
('Rohit M', 'rohit@example.com', '1414141414', 'Goa'),
('Isha A', 'isha@example.com', '1515151515', 'Nagpur'),
('Vedant P', 'vedant@example.com', '1616161616', 'Lucknow'),
('Kritika R', 'kritika@example.com', '1717171717', 'Noida'),
('Yash V', 'yash@example.com', '1818181818', 'Indore'),
('Niharika B', 'niharika@example.com', '1919191919', 'Raipur'),
('Tanya D', 'tanya@example.com', '2020202020', 'Patna');

-- Insert into Categories
INSERT INTO Categories (category_name) VALUES
('Electronics'),
('Clothing'),
('Books'),
('Home Decor'),
('Groceries'),
('Stationery'),
('Furniture'),
('Shoes'),
('Beauty'),
('Sports'),
('Toys'),
('Gardening'),
('Pet Supplies'),
('Travel'),
('Appliances'),
('Mobile Accessories'),
('Jewelry'),
('Watches'),
('Gaming'),
('Software');

-- Insert into Products
INSERT INTO Products (name, price, stock, category_id) VALUES
('Smartphone A1', 299.99, 100, 1),
('Laptop B2', 899.99, 50, 1),
('T-shirt X', 19.99, 300, 2),
('Book Y', 25.00, 200, 3),
('Sofa Z', 499.00, 20, 7),
('Running Shoes', 59.99, 150, 8),
('Face Cream', 15.00, 80, 9),
('Football', 29.99, 100, 10),
('LED Light', 9.99, 400, 4),
('Rice Pack', 12.99, 250, 5),
('Notebook', 2.99, 500, 6),
('Study Table', 129.99, 15, 7),
('Sneakers', 39.99, 120, 8),
('Lipstick', 8.99, 90, 9),
('Badminton Racket', 22.99, 60, 10),
('Toy Car', 10.00, 300, 11),
('Flower Pot', 7.50, 80, 12),
('Dog Food', 18.00, 75, 13),
('Travel Bag', 45.00, 40, 14),
('Washing Machine', 399.99, 10, 15);

-- Insert into Orders
INSERT INTO Orders (customer_id, order_date) VALUES
(1, '2025-06-01'), (2, '2025-06-02'), (3, '2025-06-03'), (4, '2025-06-04'),
(5, '2025-06-05'), (6, '2025-06-06'), (7, '2025-06-07'), (8, '2025-06-08'),
(9, '2025-06-09'), (10, '2025-06-10'), (11, '2025-06-11'), (12, '2025-06-12'),
(13, '2025-06-13'), (14, '2025-06-14'), (15, '2025-06-15'), (16, '2025-06-16'),
(17, '2025-06-17'), (18, '2025-06-18'), (19, '2025-06-19'), (20, '2025-06-20');

-- Insert into OrderDetails
INSERT INTO OrderDetails (order_id, product_id, quantity) VALUES
(1, 1, 1), (2, 2, 1), (3, 3, 2), (4, 4, 1), (5, 5, 1),
(6, 6, 2), (7, 7, 3), (8, 8, 2), (9, 9, 4), (10, 10, 1),
(11, 11, 2), (12, 12, 1), (13, 13, 3), (14, 14, 1), (15, 15, 2),
(16, 16, 1), (17, 17, 1), (18, 18, 2), (19, 19, 1), (20, 20, 1);

-- Insert into Payment
INSERT INTO Payment (order_id, amount, payment_method, payment_date) VALUES
(1, 299.99, 'Credit Card', '2025-06-01'),
(2, 899.99, 'UPI', '2025-06-02'),
(3, 39.98, 'Credit Card', '2025-06-03'),
(4, 25.00, 'Cash', '2025-06-04'),
(5, 499.00, 'Credit Card', '2025-06-05'),
(6, 119.98, 'UPI', '2025-06-06'),
(7, 45.00, 'Cash', '2025-06-07'),
(8, 59.98, 'Credit Card', '2025-06-08'),
(9, 39.96, 'UPI', '2025-06-09'),
(10, 12.99, 'Credit Card', '2025-06-10'),
(11, 5.98, 'UPI', '2025-06-11'),
(12, 129.99, 'Cash', '2025-06-12'),
(13, 119.97, 'Credit Card', '2025-06-13'),
(14, 8.99, 'UPI', '2025-06-14'),
(15, 45.98, 'Cash', '2025-06-15'),
(16, 10.00, 'Credit Card', '2025-06-16'),
(17, 7.50, 'UPI', '2025-06-17'),
(18, 36.00, 'Credit Card', '2025-06-18'),
(19, 45.00, 'UPI', '2025-06-19'),
(20, 399.99, 'Credit Card', '2025-06-20');

ALTER TABLE Products
ALTER COLUMN stock SET DEFAULT 0;


DELETE FROM customers
WHERE customer_id = 5;
