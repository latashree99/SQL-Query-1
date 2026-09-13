SELECT DATABASE ();
USE classicmodels;

-- Evaluate the sales performance of each sales representative

SELECT e.firstName, e.lastName, SUM(quantityOrdered*priceEach) AS order_value
FROM employees e
INNER JOIN customers c ON e.employeeNumber = c.salesRepEmployeeNumber AND e.jobTitle = 'Sales Rep'
LEFT JOIN orders o ON c.customerNumber = o.customerNumber
LEFT JOIN orderdetails od ON o.orderNumber = od.orderNumber
GROUP BY e.firstName, e.lastName
ORDER BY order_value DESC;
