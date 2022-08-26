-- 01. Count Employees by Town
CREATE FUNCTION ufn_count_employees_by_town(town_name VARCHAR(20)) 
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE e_count INT;
		SET e_count := ( 
			SELECT count(employee_id)
            FROM employees
            JOIN addresses USING (address_id)
            JOIN towns AS t USING (town_id)
            WHERE t.`name` = town_name
        );
    RETURN e_count;
END

-- 02. Employees Promotion
CREATE PROCEDURE usp_raise_salaries(department_name VARCHAR(50)) 
BEGIN
	UPDATE employees
	JOIN departments AS d USING (department_id)
    SET salary = salary * 1.05
    WHERE d.`name` = department_name;
END

-- 03. Employees Promotion By ID
CREATE PROCEDURE usp_raise_salary_by_id(id INT)  
BEGIN
	START TRANSACTION;
		IF((SELECT count(employee_id) FROM employees WHERE employee_id = id) <> 1) 
	THEN ROLLBACK;
    ELSE
		UPDATE employees
		SET salary = salary * 1.05
		WHERE employee_id = id;
	END IF;
END

-- 04. Triggered
