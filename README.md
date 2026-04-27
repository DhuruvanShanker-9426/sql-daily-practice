# 🗄️ SQL Practice Repository

## 📌 Overview

This repository contains SQL practice queries using the **classicmodels** sample database.

It focuses on solving real-world business queries and strengthening core SQL concepts required for Data Analyst roles.

---

## 🎯 Objectives

* Strengthen SQL fundamentals
* Practice business-oriented queries
* Improve data analysis skills using SQL

---

## 🛠️ Tools Used

* MySQL
* ClassicModels Sample Database

---

## 📂 Repository Structure

```
📦 SQL_Practice
 ┣ 📂 SQL_ASSIGNMENTS_TXT
 ┃ ┣ 📄 26-02-2026 - SQL_PRACTICE_QUESTIONS.txt
 ┃ ┗ 📄 28-02-2026 - SQL_PRACTICE_QUESTIONS.txt
 ┣ 📂 SQL_ASSIGNMENTS_SQL
 ┃ ┣ 📄 26-02-2026_PRACTICE_QUESTIONS_ANSWERS.sql
 ┃ ┗ 📄 28-02-2026_PRACTICE_QUESTIONS_ANS.sql
 ┗ 📄 mysqlsampledatabase.sql
```

---

## 📊 Topics Covered

* Aggregations (`COUNT`, `SUM`, `AVG`, `MAX`, `MIN`)
* `GROUP BY` and `ORDER BY`
* Joins (INNER JOIN, LEFT JOIN)
* Date Functions (`YEAR`)
* Filtering and Sorting
* Multi-table queries

---

## 🚀 Sample Queries

```sql
-- Total customers per country
SELECT country, COUNT(*) AS Total_Customers
FROM customers
GROUP BY country
ORDER BY Total_Customers DESC;
```

```sql
-- Customer with sales representative
SELECT customerName, CONCAT(firstName, " ", lastName) AS sales_rep_name
FROM customers c
JOIN employees e
ON c.salesRepEmployeeNumber = e.employeeNumber;
```

---

## 📈 Future Enhancements

* Add advanced SQL queries (CTEs, Window Functions)
* Work on larger datasets
* Optimize queries for performance
* Build case-study-based SQL projects

---

## 📬 Connect

Feel free to explore, fork, or suggest improvements!