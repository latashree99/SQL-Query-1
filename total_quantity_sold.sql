SELECT DATABASE ();
USE classicmodels;

-- List the top 10 best-selling products based on total quantity sold

SELECT productName, SUM(quantityOrdered) AS total_quantity_sold
FROM orderdetails od
INNER JOIN products p ON od.productCode = p.productCode
GROUP BY productName
ORDER BY total_quantity_sold DESC
LIMIT 10;

