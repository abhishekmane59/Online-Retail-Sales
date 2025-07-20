# 🛒 Online Retail Sales Database Design

## 📘 Overview

This project involves designing a normalized relational database for an online retail store. The system enables efficient tracking and management of customers, products, categories, orders, and payments using structured SQL queries and database schema principles.

---

## 🎯 Objective

To create a scalable and normalized SQL schema that supports core functionalities of an e-commerce platform. The project demonstrates database modeling, schema creation, data population, and reporting using SQL.

---

## 🛠️ Technologies Used

- **RDBMS**: MySQL (can also run on PostgreSQL, SQLite, or Oracle)
- **SQL**: DDL, DML, Joins, Aggregates
- **Tools**: dbdiagram.io, DBeaver, VS Code, GitHub

---

## 🧱 Database Design

### 📌 Main Tables:
- `Customer`: Stores customer details
- `Product`: Product catalog information
- `Category`: Groups products into logical categories
- `Orders`: Order records for each purchase
- `OrderItem`: Line items for each order
- `Payment`: Payment information for each order

### 🧩 Relationships:
- A Customer can place multiple Orders
- Each Order can have multiple OrderItems
- Each OrderItem maps to one Product
- Each Product belongs to one Category
- Each Order has one associated Payment

---

## 🗂️ Folder Structure

---

## 🔎 Example Reports

- 🔢 **Total orders per customer**
- 💰 **Category-wise revenue**
- 📦 **Product-wise total quantity sold**
- 📅 **Daily sales summary**


---

## 🚀 How to Run the Project

1. Clone or download the repository.
2. Open your SQL tool (MySQL Workbench, DBeaver, etc.).
3. Run `DDL_Scripts/create_tables.sql` to generate schema.
4. Run `DML_Scripts/insert_data.sql` to populate data.
5. Run queries from `Queries/reports.sql` to generate business reports.

---

## 📄 Internship Report

A concise 1–2 page PDF report has been prepared, covering:
- Introduction and Abstract
- Tools Used
- Steps Followed in Project Execution
- Conclusion

> 📌 Refer to `report.pdf` for the final submission.

---

## 👤 Author

**Abhishek Mane**  
SQL Developer Intern  
GitHub: [abhishekmane59](https://github.com/abhishekmane59)  

---

## 📌 Disclaimer

This project is developed as part of an internship assignment and is intended for educational purposes only.

---



