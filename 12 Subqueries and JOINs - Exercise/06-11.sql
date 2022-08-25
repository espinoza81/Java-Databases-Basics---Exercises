-- 07. Employees with Project
SELECT e.employee_id, e.first_name, p.`name`
FROM employees AS e
	JOIN employees_projects AS ep USING (employee_id)
    	JOIN projects AS p USING (project_id)
WHERE DATE(p.start_date) > '2002-08-13' AND p.end_date IS NULL
ORDER BY e.first_name, p.`name`
LIMIT 5;

-- 08. Employee 24
SELECT e.employee_id, e.first_name, 
	CASE 
		WHEN DATE(p.start_date) <= '2004-12-31' THEN p.`name`
        ELSE NULL
	END AS project_name
FROM employees AS e
	JOIN employees_projects AS ep USING (employee_id)
    	JOIN projects AS p USING (project_id)
WHERE e.employee_id = 24
ORDER BY p.`name`;

-- 09. Employee Manager 
SELECT e1.employee_id, e1.first_name, e1.manager_id, (
	SELECT e2.first_name
    FROM employees AS e2
    WHERE e1.manager_id = e2.employee_id
    ) AS manager_name
FROM employees AS e1
WHERE e1.manager_id IN (3, 7)
ORDER BY e1.first_name;

-- 10. Employee Summary
SELECT e1.employee_id, 
	concat_ws(' ', e1.first_name, e1.last_name) AS employee_name, 
    (
		SELECT concat_ws(' ', e2.first_name, e2.last_name)
		FROM employees AS e2
		WHERE e1.manager_id = e2.employee_id
    ) AS manager_name,
    d.`name` AS department_name
FROM employees AS e1
JOIN departments AS d USING (department_id)
HAVING manager_name IS NOT NULL
ORDER BY e1.employee_id
LIMIT 5;

-- 11. Min Average Salary
