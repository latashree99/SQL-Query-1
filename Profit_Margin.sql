SELECT DATABASE ();
USE classicmodels;

-- Calculate the profit margin for each product by subtracting the cost of goods sold (COGS) from the sales revenue
SELECT SUM(quantityOrdered*priceEach)
FROM orderdetails
