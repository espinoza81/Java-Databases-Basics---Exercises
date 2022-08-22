-- 01. Departments Info
SELECT department_id, count(id)
FROM employees
GROUP BY department_id
ORDER BY department_id;

-- 02. Average Salary
SELECT department_id, ROUND(avg(salary), 2)
FROM employees
GROUP BY department_id
ORDER BY department_id;

-- 03. Minimum Salary
SELECT department_id, ROUND(min(salary), 2) AS 'Min Salary'
FROM employees
GROUP BY department_id
HAVING `Min Salary` > 800;

-- 04. Appetizers Count 
SELECT COUNT(id) 
FROM products
WHERE category_id = 2 AND price > 8;

-- 05. Menu Prices
SELECT category_id, 
ROUND(avg(price), 2) AS 'Average Price',
ROUND(min(price), 2) AS 'Cheapest Product',
ROUND(max(price), 2) AS 'Most Expensive Product'
FROM products
GROUP BY category_id;
