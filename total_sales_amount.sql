SELECT DATABASE ();
USE classicmodels;

-- Calculate the total sales amount for each product line


SELECT productLine, SUM(priceEach * quantityOrdered) AS total_sales_amount
FROM orderdetails od
INNER JOIN products p ON od.productCode = p.productCode
GROUP BY productLine;

