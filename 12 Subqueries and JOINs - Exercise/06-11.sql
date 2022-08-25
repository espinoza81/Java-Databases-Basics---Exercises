-- 06. Employees Hired After
SELECT e.first_name, e.last_name, e.hire_date, d.`name`
FROM employees AS e
INNER JOIN departments AS d
ON e.department_id = d.department_id
WHERE d.`name` IN ('Sales', 'Finance') AND e.hire_date > '1999-01-01 00:00:00'
ORDER BY e.hire_date;

-- 07. Employees with Project
SELECT e.employee_id, e.first_name, p.`name`
FROM employees AS e
	JOIN employees_projects AS ep USING (employee_id)
    JOIN projects AS p USING (project_id)
WHERE DATE(p.start_date) > '2002-08-13' AND p.end_date IS NULL
ORDER BY e.first_name, p.`name`
LIMIT 5;

-- 08. Employee 24
