# sqlTask1

## E-commerce Database Schema (PostgreSQL)

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




# 📊 Task 3: Writing Basic SELECT Queries (PostgreSQL)

 🎯 Objective
Learn to **extract and filter data** using:
- `SELECT`
- `WHERE`
- `ORDER BY`
- `LIMIT`
within your **e-commerce PostgreSQL database** for clear, structured data retrieval.

---

## 🛠 Tools Used
- PostgreSQL (pgAdmin / DB Fiddle)
- SQL (Data Query Language - DQL)

---

## 📄 Files
- `queries.sql` – contains:
  - Basic `SELECT` queries on multiple tables
  - Filtering with `WHERE`, `AND`, `OR`, `LIKE`, `BETWEEN`
  - Sorting with `ORDER BY ASC/DESC`
  - Limiting results with `LIMIT`
  - Aliasing and using `DISTINCT`

---

## 🚀 What This Task Covers

✅ **Basic Data Retrieval**:

SELECT * FROM table_name;
SELECT column1, column2 FROM table_name;

✅ Filtering with conditions:

WHERE for filtering rows.

AND, OR for combining conditions.

LIKE '%value%' for pattern matching.

BETWEEN value1 AND value2 for ranges.

✅ Sorting:


ORDER BY column ASC;   -- Default
ORDER BY column DESC;  -- Descending

✅ Limiting Rows:

LIMIT n;

✅ Aliasing Columns:

SELECT column AS alias_name FROM table_name;

✅ Using DISTINCT to remove duplicates:

SELECT DISTINCT column FROM table_name;

✅ Using IN for multiple match conditions
SELECT * FROM table_name WHERE column IN (value1, value2);

✅ Simple Joins for cross-table data extraction.

## 🧪 How to Run
1️⃣ Ensure your Task 1 and Task 2 data are in your PostgreSQL database.
2️⃣ Open queries.sql in pgAdmin Query Tool or DB Fiddle.
3️⃣ Execute the script to see filtered, sorted, and limited query outputs.
4️⃣ Experiment by modifying filters, conditions, and limits for practice.

## ❓ Interview Concepts Practiced

What does SELECT * do? Retrieves all columns.

How do you filter rows? Using WHERE.

What is LIKE '%value%'? Pattern-based filtering.

What is BETWEEN used for? Filtering ranges.

How do you limit output rows? Using LIMIT.

Difference between = and IN. = for single match, IN for multiple.

How to sort in descending order? Using ORDER BY column DESC.

What is aliasing? Renaming columns using AS.

Explain DISTINCT. Removes duplicate values.

What is the default sort order? Ascending (ASC).

## 👨‍💻 Author
Tanmay Santosh Khairnar

✅ Status
✅ Completed Task 3: Querying, filtering, sorting, and practicing extraction in PostgreSQL.



---

### 📌 Next Steps:
✅ Copy this `README.md` into your repository.  
✅ Run your `queries.sql` to ensure all outputs are as expected.  
✅ Push to GitHub:



# 📊 Task 4: Aggregate Functions and Grouping (PostgreSQL)

## 🎯 Objective
Use aggregate functions and grouping to **summarize and analyze data** from the e-commerce database.

---

## 🛠 Tools
- PostgreSQL (pgAdmin / DB Fiddle)
- SQL (Aggregation, Grouping)

---

## 📄 Files
- `queries.sql` – contains:
  - `SUM`, `AVG`, `COUNT`, `MAX`, `MIN` functions
  - `GROUP BY` for categorization
  - `HAVING` for filtering groups
  - Examples with numeric columns for aggregation

---

## 🚀 What This Task Covers

✅ Applying **aggregate functions**:
- `COUNT(*)` and `COUNT(column)`
- `SUM(column)`
- `AVG(column)`
- `MAX(column)` and `MIN(column)`
- `ROUND()` for formatting

✅ Using **`GROUP BY`** to group data.

✅ Using **`HAVING`** to filter aggregated groups.

✅ Combining grouping and ordering for clear analysis.

---

## 🧪 How to Run

1️⃣ Ensure your PostgreSQL database has data from **Tasks 1 & 2**.  
2️⃣ Open `queries.sql` in pgAdmin Query Tool or DB Fiddle.  
3️⃣ Execute the queries to view aggregated summaries.

---

## ❓ Interview Concepts Practiced

1. **What is `GROUP BY`?** Used to group rows with the same values for aggregation.
2. **Difference between `WHERE` and `HAVING`?**
   - `WHERE` filters **rows before aggregation.**
   - `HAVING` filters **groups after aggregation.**
3. **`COUNT(*)` vs `COUNT(column)`?**
   - `COUNT(*)`: Counts all rows.
   - `COUNT(column)`: Counts non-NULL values in that column.
4. **Group by multiple columns?** Yes, using `GROUP BY col1, col2`.
5. **What is `ROUND()`?** Used to round numeric values to specified decimal places.
6. **Find highest salary by department?** Using `MAX(salary)` grouped by department.
7. **Default `GROUP BY` behavior?** Groups in ascending order by default.
8. **What are `AVG` and `SUM`?** `AVG`: average value, `SUM`: total sum of a column.
9. **Counting distinct values?** Using `COUNT(DISTINCT column)`.
10. **What is an aggregate function?** A function that performs calculations on a set of values, returning a single value.

---

## 👨‍💻 Author
**Tanmay Santosh Khairnar**

---

## ✅ Status
✅ **Completed Task 4: Aggregation and Grouping on PostgreSQL e-commerce dataset for structured analysis.**
✅ Next Steps:
1️⃣ Copy queries.sql and README.md into your repository under:


ecommerce-database-schema/
├── schema.sql
├── data.sql
├── queries.sql          ✅ <-- Task 3 queries
├── aggregation.sql      ✅ <-- Task 4 queries (or queries.sql extended)
├── ER_diagram.png
└── README.md            ✅ <-- updated for Task 4
2️⃣ Run the queries in pgAdmin or DB Fiddle for validation.
3️⃣ Push to GitHub:

---

# 🔗 Task 5: SQL Joins (PostgreSQL)

## 🎯 Objective
Practice **combining data from multiple tables** using:
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL OUTER JOIN
within your **e-commerce database** for structured data merging.

---

## 🛠 Tools
- PostgreSQL (pgAdmin / DB Fiddle)
- SQL (Join operations)

---

## 📄 Files
- `joins.sql` – contains:
  - INNER, LEFT, RIGHT, FULL OUTER joins
  - CROSS JOIN and SELF JOIN examples
  - Multi-table joins with aggregation
  - Practice of filtering joined data using `WHERE`

---

## 🚀 What This Task Covers

✅ **INNER JOIN:** Matching rows across tables.  
✅ **LEFT JOIN:** All from left + matched from right, NULL if no match.  
✅ **RIGHT JOIN:** All from right + matched from left, NULL if no match.  
✅ **FULL OUTER JOIN:** All from both tables, matching where possible.  
✅ **CROSS JOIN:** Cartesian product of rows.  
✅ **SELF JOIN:** Joining a table with itself for comparisons.  
✅ Combining JOINs with filtering (`WHERE`).  
✅ Using JOINs with aggregation for grouped insights.

---

## 🧪 How to Run

1️⃣ Ensure your PostgreSQL database is populated with previous tasks.  
2️⃣ Open `joins.sql` in pgAdmin Query Tool or DB Fiddle.  
3️⃣ Execute the script to view results for each join type.

---

## ❓ Interview Questions Practiced

1. **INNER vs LEFT JOIN?** INNER: only matches. LEFT: all from left, matched or NULL.
2. **FULL OUTER JOIN?** Combines all records from both, matching where possible.
3. **Can joins be nested?** Yes, using multiple JOINs in a query.
4. **Joining >2 tables?** Yes, chaining JOIN conditions.
5. **What is a CROSS JOIN?** Produces Cartesian product.
6. **What is a NATURAL JOIN?** Joins on columns with the same name automatically.
7. **Join without foreign key?** Yes, as long as logical condition exists.
8. **What is a self-join?** Joining a table with itself for comparison.
9. **What causes Cartesian product?** CROSS JOIN or missing ON condition in joins.
10. **Optimizing joins?** Use indexes, minimize unnecessary columns, filter early.

---

## 👨‍💻 Author
**Tanmay Santosh Khairnar**

---

## ✅ Status
✅ **Completed Task 5: Practiced SQL joins for structured multi-table data extraction.**


