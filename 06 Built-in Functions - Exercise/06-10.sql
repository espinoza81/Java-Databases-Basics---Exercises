-- 06. Find Towns Starting With
SELECT * 
FROM towns
WHERE left(`name`, 1) REGEXP 'M|K|B|E'
ORDER BY `name`;

-- 07. Find Towns Not Starting With
SELECT * 
FROM towns
WHERE left(`name`, 1) NOT REGEXP '[RBD]'
ORDER BY `name`;

-- 08. Create View Employees Hired After
CREATE VIEW v_employees_hired_after_2000 AS
SELECT first_name, last_name
FROM employees
WHERE YEAR(hire_date) > 2000;

SELECT * FROM v_employees_hired_after_2000;

-- 09. Length of Last Name 
