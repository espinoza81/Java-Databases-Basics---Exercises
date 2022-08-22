-- 13. Employees Average Salaries
CREATE TABLE `salary_more_than` AS
SELECT *
FROM employees
WHERE salary > 30000;

DELETE 
FROM salary_more_than
WHERE manager_id = 42;

UPDATE salary_more_than
SET salary = salary + 5000
WHERE department_id = 1;

SELECT department_id, avg(salary) AS avg_salary
FROM salary_more_than
GROUP BY department_id
ORDER BY department_id;

-- 14. Employees Maximum Salaries
SELECT department_id, max(salary) AS max_salary
FROM employees
GROUP BY department_id
HAVING max_salary NOT BETWEEN 30000 AND 70000
ORDER BY department_id;

-- 15. Employees Count Salaries 
