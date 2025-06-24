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
