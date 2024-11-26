create database workers;
use workers;
create table workers(employeename varchar(20),salary int );
insert into workers values('nithya',20000),('priya',30000),('deepa',40000),('sridevi',500000),('revathi',35000);
select*from workers;

1.
SELECT *FROM workers WHERE salary > (SELECT AVG(salary) FROM workers);


2. Select e.name
FROM employees e
WHERE e.department_id = (
    SELECT department_id
    FROM employees
    WHERE name = 'John Doe'
 AND e.name != 'John Doe');

3.
SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);

4.
SELECT customer_id             
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 5; 

SELECT c.customer_id, c.customer_name
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING COUNT(o.order_id) > 5;

5.
SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id;

SELECT c.customer_id, c.customer_name, COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name;

6.
SELECT *
FROM employees
WHERE join_date >= CURDATE() - INTERVAL 6 MONTH;

SELECT *
FROM employees
WHERE join_date >= DATEADD(MONTH, -6, GETDATE());

7.
SELECT product_id, SUM(quantity * price) AS total_sales
FROM order_details
GROUP BY product_id;

SELECT p.product_name, SUM(od.quantity * od.price) AS total_sales
FROM order_details od
JOIN products p ON od.product_id = p.product_id
GROUP BY p.product_name;
8.
SELECT p.product_id, p.product_name
FROM products p
LEFT JOIN order_details od ON p.product_id = od.product_id
WHERE od.product_id IS NULL;
9.
WITH CTE AS (
    SELECT 
        *,
        ROW_NUMBER() OVER (PARTITION BY column1, column2, column3 ORDER BY id) AS row_num
    FROM table_name
)
DELETE FROM table_name
WHERE id IN (
    SELECT id
    FROM CTE
    WHERE row_num > 1
);

10.
SELECT TOP 10 
    c.customer_id, 
    c.customer_name, 
    MAX(o.order_date) AS last_order_date
FROM 
    customers c
LEFT JOIN 
    orders o
ON 
    c.customer_id = o.customer_id
GROUP BY 
    c.customer_id, c.customer_name
HAVING 
    MAX(o.order_date) IS NULL 
    OR MAX(o.order_date) < DATEADD(YEAR, -1, GETDATE())
ORDER BY 
    last_order_date ASC;



