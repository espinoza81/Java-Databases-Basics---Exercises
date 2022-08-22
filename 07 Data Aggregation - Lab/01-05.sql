-- 01. Departments Info
SELECT department_id, count(id)
FROM employees
GROUP BY department_id
ORDER BY department_id;

-- 02. Average Salary
