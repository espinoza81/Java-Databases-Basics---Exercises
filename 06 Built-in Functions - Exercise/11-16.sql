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
