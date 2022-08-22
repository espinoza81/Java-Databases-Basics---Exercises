-- 11. Mix of Peak and River Names
SELECT peaks.peak_name, rivers.river_name, lower(concat(peaks.peak_name, Substring(rivers.river_name, 2))) AS mix    
FROM peaks  
INNER JOIN rivers
WHERE right(peak_name, 1) = Left(river_name, 1)
ORDER BY mix;

-- 12. Games From 2011 and 2012 Year
SELECT `name`, date_format(`start`, '%Y-%m-%d')
FROM games
WHERE YEAR(`start`) IN (2011, 2012)
ORDER BY `start`, `name`
LIMIT 50;

-- 13. User Email Providers
SELECT user_name, substring(email, locate("@", email) + 1) AS 'Email Provider'
FROM users
ORDER BY `Email Provider`, user_name;

-- 14. Get Users with IP Address Like Pattern
SELECT user_name, ip_address
FROM users
WHERE ip_address LIKE "___.1%.%.___"
ORDER BY user_name;

-- 15. Show All Games with Duration
SELECT `name` AS 'game',
	CASE 
		WHEN HOUR (`start`) < 12 THEN 'Morning'
        WHEN HOUR (`start`) >= 18 THEN 'Evening'
        ELSE 'Afternoon'
	END AS 'Part of the Day', 
    CASE 
		WHEN duration <= 3 THEN 'Extra Short'
        WHEN duration BETWEEN 3 AND 6 THEN 'Short'
        WHEN duration BETWEEN 7 AND 10 THEN 'Long'
        ELSE 'Extra Long'
	END AS 'Duration'
FROM games;

-- 16. Orders Table 
SELECT product_name, order_date, 
ADDDATE(order_date, INTERVAL 3 DAY) AS pay_due, 
ADDDATE(order_date, INTERVAL 1 MONTH) AS pay_due
FROM orders;
