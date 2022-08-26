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
