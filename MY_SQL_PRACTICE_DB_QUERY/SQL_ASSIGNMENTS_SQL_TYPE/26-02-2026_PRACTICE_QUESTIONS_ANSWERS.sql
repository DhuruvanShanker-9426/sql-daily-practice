-- 26-02-2026 - PRACTICE QUESTIONS:
 
 USE classicmodels;
 
 -- 1. List the number of customers in each country.
 SELECT country,COUNT(*) AS Total_Customers FROM customers
 GROUP BY country
 ORDER BY Total_Customers DESC;
 
 -- 2. Find the total payments received per customer.
 SELECT customerNumber,COUNT(*) AS Total_Payments_Received FROM payments
 GROUP BY customerNumber;
 
 -- 3.  Show the average credit limit per country
 SELECT country,ROUND(AVG(creditLimit),2) AS Avg_Credit_Limit FROM customers
 GROUP BY country;
 
 -- 4.  Count how many employees report to each manager.
 SELECT reportsTo,COUNT(*) AS No_of_emp
 FROM employees
 GROUP BY reportsTo;
 
 -- 5. Find the total quantity ordered for each product.
 SELECT productCode,SUM(quantityOrdered) AS Total_quantity_ordered FROM orderdetails
 GROUP BY productCode;
 
 -- 6. Show the maximum payment amount received from each customer.  
 SELECT customerNumber,MAX(amount) AS Maximum_payment 
 FROM payments
 GROUP BY customerNumber;
 
 -- 7. Find the minimum order date for each customer.
 SELECT customerNumber,MIN(orderDate) AS Minimum_OrderDate 
 FROM orders
 GROUP BY customerNumber;

 -- 8. Display the average order value per customer.
SELECT orderNumber,ROUND(SUM(priceEach)*SUM(quantityOrdered)/COUNT(*),2) AS AOV 
FROM orderdetails
GROUP BY orderNumber
ORDER BY AOV DESC;
-- SELECT * FROM orders;

 -- 9. List the total sales per product line.  
 SELECT productLine,SUM(MSRP) AS Total_Sales 
 FROM products 
 GROUP BY productLine;
 
 -- 10. Show the number of orders placed per year.
SELECT YEAR(orderDate) AS Years ,COUNT(*) AS No_of_orders
FROM orders
GROUP BY Years;

 -- 11. List customers grouped by country, ordered by the number of customers descending.  
 SELECT country,COUNT(*) AS No_of_customers 
 FROM customers
 GROUP BY country
 ORDER BY No_of_customers DESC;
 
 -- 12. Show product lines with their total sales, ordered by sales amount descending.
 SELECT productLine,SUM(MSRP) AS total_sales 
 FROM products
 GROUP BY productLine
 ORDER BY total_sales DESC;
 
 -- 13. Find employees grouped by office, ordered alphabetically by office city.  
 SELECT employees.officeCode,COUNT(*) AS No_of_employees
 FROM employees 
 JOIN offices
 ON employees.officeCode=offices.officeCode
 GROUP BY employees.officeCode
 ORDER BY offices.city;
 
 -- 14. Display customers grouped by sales representative, ordered by total payments received.  
 select salesRepEmployeeNumber, COUNT(*)  AS no_of_customers 
 FROM customers
 WHERE salesRepEmployeeNumber IN (SELECT employeeNumber 
 FROM employees
 WHERE jobTitle="Sales Representative"
 )
 GROUP BY salesRepEmployeeNumber;
 
 -- 15. Show the average order value per year, ordered chronologically.
 SELECT YEAR(orderDate) AS years,ROUND(SUM(priceEach)*SUM(quantityOrdered)/COUNT(*),2) AS AOV 
 FROM orders 
 JOIN orderdetails
 ON orders.orderNumber = orderdetails.orderNumber
 GROUP BY years
 ORDER BY years;
 
 -- 16. List the top 5 customers with the highest total payments (group by customer, order by sum).  
 SELECT customerNumber,SUM(amount) AS Total_payments 
 FROM payments
 GROUP BY customerNumber
 ORDER BY Total_payments DESC 
 LIMIT 5;
 
 -- 17. Show the product with the highest total quantity ordered in each product line.  
 SELECT productLine,SUM(quantityOrdered) AS Total_quantity 
 FROM products
 JOIN orderdetails
 WHERE products.productCode=orderdetails.productCode
 GROUP BY productLine
 ORDER BY Total_quantity DESC;
 
 -- 18. Find the office with the maximum number of employees, ordered by employee count.  
  SELECT employees.officeCode,COUNT(*) AS No_of_employees
  FROM employees 
  JOIN offices
  ON employees.officeCode=offices.officeCode
  GROUP BY employees.officeCode
  ORDER BY No_of_employees DESC;
 
 -- 19. Display the top 3 countries with the highest average credit limit.  
 SELECT country,AVG(creditLimit) AS Avg_creditLimit
 FROM customers
 GROUP BY country
 ORDER BY Avg_creditLimit DESC
 LIMIT 3;
 
 -- 20. Show the year with the highest total sales, ordered by sales descending.
 SELECT YEAR(orderDate) AS  years,SUM(priceEach)*SUM(quantityOrdered) AS Total_sales
 FROM orders AS ord
 JOIN orderdetails AS ord_det
 ON ord.orderNumber=ord_det.orderNumber
 GROUP BY years
 ORDER BY Total_sales DESC;