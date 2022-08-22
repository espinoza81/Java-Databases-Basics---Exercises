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
