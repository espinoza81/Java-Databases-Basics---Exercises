-- 12. Highest Peaks in Bulgaria
SELECT c.country_code, m.mountain_range, p.peak_name, p.elevation
FROM peaks AS p
INNER JOIN mountains AS m 
ON p.mountain_id = m.id
INNER JOIN mountains_countries AS c 
ON m.id = c.mountain_id
WHERE c.country_code = 'BG' AND p.elevation > 2835
ORDER BY p.elevation DESC;

-- 13. Count Mountain Ranges
SELECT c.country_code, count(m.mountain_range) AS mountain_range
FROM mountains AS m 
INNER JOIN mountains_countries AS c 
ON m.id = c.mountain_id
WHERE c.country_code IN ('BG', 'RU', 'US')
GROUP BY c.country_code
ORDER BY mountain_range DESC;

-- 14. Countries with Rivers 
SELECT c.country_name, r.river_name
FROM countries AS c 
LEFT JOIN countries_rivers AS cr USING (country_code)
LEFT JOIN rivers AS r
ON cr.river_id = r.id
WHERE c.continent_code = 'AF'
ORDER BY c.country_name
LIMIT 5;

-- 15. Continents and Currencies
