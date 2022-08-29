-- 08. Find Full Name
CREATE PROCEDURE usp_get_holders_full_name () 
BEGIN
	SELECT concat_ws(' ', first_name, last_name) AS full_name
	FROM account_holders
    ORDER BY full_name;
END

-- 09. People with Balance Higher Than
