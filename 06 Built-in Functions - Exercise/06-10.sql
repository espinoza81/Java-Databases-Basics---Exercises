-- 06. Find Towns Starting With
SELECT * 
FROM towns
WHERE left(`name`, 1) REGEXP 'M|K|B|E'
ORDER BY `name`;

-- 07. Find Towns Not Starting With
