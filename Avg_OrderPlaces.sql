SELECT DATABASE ();
USE classicmodels;

-- Calculate the average number of orders placed by each customer

SELECT COUNT(o.orderNumber)/COUNT(DISTINCT c.customerNumber) AS AvgOrdersPlacePerCustomer
FROM customers c
LEFT JOIN orders o ON c.customerNumber = o.customerNumber;

