-- 11. Mix of Peak and River Names
SELECT peaks.peak_name, rivers.river_name, lower(concat(peaks.peak_name, Substring(rivers.river_name, 2))) AS mix    
FROM peaks  
INNER JOIN rivers
WHERE right(peak_name, 1) = Left(river_name, 1)
ORDER BY mix;

-- 12. Games From 2011 and 2012 Year
