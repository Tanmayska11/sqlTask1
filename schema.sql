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
