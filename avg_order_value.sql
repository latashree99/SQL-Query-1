SELECT DATABASE ();
USE classicmodels;

-- Calculate the average order amount for each country

SELECT country, AVG(priceEach * quantityOrdered) AS avg_order_value
FROM customers c
INNER JOIN orders O ON c.customerNumber = o.customerNumber
INNER JOIN orderdetails od  ON o.orderNumber = od.orderNumber
GROUP BY country
ORDER BY avg_order_value;
