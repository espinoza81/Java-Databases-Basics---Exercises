-- 08. Find Full Name
CREATE PROCEDURE usp_get_holders_full_name () 
BEGIN
	SELECT concat_ws(' ', first_name, last_name) AS full_name
	FROM account_holders
    ORDER BY full_name;
END

-- 09. People with Balance Higher Than
CREATE PROCEDURE usp_get_holders_with_balance_higher_than(balance DECIMAL(12, 4)) 
BEGIN
	SELECT first_name, last_name
	FROM account_holders AS h
    LEFT JOIN accounts AS a
    ON h.id = a.account_holder_id
	GROUP BY first_name, last_name
    HAVING sum(a.balance) > balance;
END

-- 10. Future Value Function
CREATE FUNCTION ufn_calculate_future_value(sum DECIMAL(19, 4), yearly_interest DOUBLE, yers INT)
RETURNS DECIMAL(19, 4)
DETERMINISTIC
BEGIN
	DECLARE future_sum DECIMAL(19, 4);
    SET future_sum := sum * pow(1 + yearly_interest, yers);
    RETURN future_sum;
END

-- 11. Calculating Interest
CREATE FUNCTION ufn_calculate_future_value(sum DECIMAL(19, 4), yearly_interest DECIMAL(19, 4), yers INT)
RETURNS DECIMAL(19, 4)
DETERMINISTIC
BEGIN
	DECLARE future_sum DECIMAL(19, 4);
    SET future_sum := sum * pow(1 + yearly_interest, yers);
    RETURN future_sum;
END;

CREATE PROCEDURE usp_calculate_future_value_for_account(id INT, interest DECIMAL(19, 4)) 
BEGIN
	SELECT a.id, first_name, last_name, a.balance AS current_balance, ufn_calculate_future_value(a.balance, interest, 5) AS balance_in_5_years
	FROM account_holders AS h
    LEFT JOIN accounts AS a
    ON h.id = a.account_holder_id
    WHERE a.id = id;
END;

-- 12. Deposit Money
CREATE PROCEDURE usp_deposit_money(account_id INT, money_amount DECIMAL(19, 4))
BEGIN
	START TRANSACTION;
		IF (money_amount <= 0) THEN
    ROLLBACK;
		ELSE
			UPDATE accounts
            SET balance = balance + money_amount
            WHERE id = account_id;
			COMMIT;
        END IF;	
END

-- 13. Withdraw Money
CREATE PROCEDURE usp_withdraw_money(account_id INT, money_amount DECIMAL(19, 4))
BEGIN
	START TRANSACTION;
		IF (money_amount <= 0 OR (SELECT balance FROM accounts WHERE id = account_id) < money_amount) THEN
    ROLLBACK;
		ELSE
			UPDATE accounts
            SET balance = balance - money_amount
            WHERE id = account_id;
        END IF;	
END

-- 14. Money Transfer
CREATE PROCEDURE usp_transfer_money(from_account_id INT, to_account_id INT , amount DECIMAL(19, 4))
BEGIN
	START TRANSACTION;
		IF (amount <= 0 
				OR (SELECT balance FROM accounts WHERE id = from_account_id) < amount
                OR (SELECT count(id) FROM accounts WHERE id = from_account_id) <> 1
                OR (SELECT count(id) FROM accounts WHERE id = to_account_id) <> 1
                OR from_account_id = to_account_id) THEN
    ROLLBACK;
		ELSE
			UPDATE accounts
            SET balance = balance - amount
            WHERE id = from_account_id;
		
			UPDATE accounts
            SET balance = balance + amount
            WHERE id = to_account_id;
            COMMIT;
        END IF;	
END

-- 15. Log Accounts Trigger
