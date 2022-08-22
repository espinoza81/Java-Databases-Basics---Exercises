-- 01. Find Book Titles
SELECT title 
FROM books
WHERE substring(title, 1, 3) = 'The';

-- 02. Replace Titles
