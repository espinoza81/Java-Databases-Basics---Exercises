-- 01. Find Names of All Employees by First Name
SELECT first_name, last_name 
FROM employees
WHERE substring(first_name, 1, 2) LIKE 'Sa';

-- 02. Find Names of All Employees by Last Name
SELECT first_name, last_name 
FROM employees
WHERE last_name REGEXP 'ei';

-- 03. Find First Names of All Employess
