-- 01. Find Book Titles
SELECT title 
FROM books
WHERE substring(title, 1, 3) = 'The';

-- 02. Replace Titles
SELECT replace(title, 'The', '***') 
AS Title
FROM books
WHERE substring(title, 1, 3) = 'The';


