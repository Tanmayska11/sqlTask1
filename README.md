# sqlTask1

# E-commerce Database Schema (PostgreSQL)

## 🎯 Objective
Design a normalized PostgreSQL database for an e-commerce system using pgAdmin.

## 📁 Files
- `schema.sql` — SQL script to create the database schema
- `ER_diagram.png` — Exported entity-relationship diagram
- `README.md` — Documentation of the project

## 📦 Tables
- `Customers`: Stores customer info
- `Categories`: Product categories
- `Products`: Product info
- `Orders`: Order info linked to customers
- `OrderDetails`: Junction table for products and orders (M:N)
- `Payment`: Payment info for orders

## 🔗 Relationships
- One customer → many orders
- One order → many products (via `OrderDetails`)
- One product → one category
- One order → one payment

## 🛠 Tools
- PostgreSQL 16
- pgAdmin 4
- ERD Tool in pgAdmin

## ✅ How to Use
1. Run `schema.sql` in pgAdmin Query Tool to create schema.
2. Use the ERD Tool in pgAdmin to visualize relationships.

---

Author: Tanmay Santosh Khairnar


# 📦 Task 2: Data Insertion and Handling Nulls (PostgreSQL)

## 🎯 Objective
Practice inserting, updating, and deleting data while handling missing values using `NULL` and `DEFAULT` within your **PostgreSQL e-commerce database schema**.

---

## 🛠 Tools
- PostgreSQL (via pgAdmin or DB Fiddle)
- SQL (DML: INSERT, UPDATE, DELETE)

---

## 📄 Files
- `data.sql` – contains:
  - `INSERT` statements to populate each table with **20 rows**
  - Handling `NULL` values in columns
  - `UPDATE` examples with `WHERE` conditions
  - `DELETE` examples with `WHERE` conditions

---

## 🚀 What This Task Covers

✅ Insert data using:
INSERT INTO table_name (columns) VALUES (...);
✅ Insert with partial columns using NULL or allowing DEFAULT values.
✅ Update specific rows using:


UPDATE table_name SET column = value WHERE condition;
✅ Delete specific rows safely using:


DELETE FROM table_name WHERE condition;
🧪 How to Run
1️⃣ Ensure your Task 1 schema (schema.sql) is already executed in your PostgreSQL database.
2️⃣ Open data.sql in pgAdmin Query Tool or DB Fiddle.
3️⃣ Execute the script to populate the database with clean, consistent sample data.

### ❓ Sample Queries to Explore After Insertion

-- Check inserted data
SELECT * FROM Customers;
SELECT * FROM Orders;

-- Check NULL handling
SELECT * FROM Customers WHERE email IS NULL;

-- Update example
UPDATE Products SET stock = 0 WHERE stock IS NULL;

-- Delete example
DELETE FROM Orders WHERE order_id = 5;
💡 Interview Questions Practiced
Difference between NULL and 0.

What is a default constraint in PostgreSQL?

How does IS NULL work in SQL?

How to update multiple rows safely.

Partial insertion with specific columns.

Behavior when leaving NOT NULL fields empty.

Using transactions and rollback for deletion.

Inserting data into specific columns only.

Inserting using INSERT INTO ... SELECT.

Understanding ON DELETE CASCADE behavior.

### 👨‍💻 Author
Tanmay Santosh Khairnar

✅ Status
✅ Completed Task 2: Database is populated, clean, and ready for queries and visualization.

---

### 📌 Next:
✅ Copy and paste this `README.md` into your `ecommerce-database-schema` repository for Task 2.  
✅ Commit and push:
```bash
git add README.md
git commit -m "Added README for Task 2: Data Insertion and Null Handling"
git push
