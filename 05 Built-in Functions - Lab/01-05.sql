-- 01. Find Book Titles
SELECT title 
FROM books
WHERE substring(title, 1, 3) = 'The';

-- 02. Replace Titles
SELECT replace(title, 'The', '***') 
AS Title
FROM books
WHERE substring(title, 1, 3) = 'The';

-- 03. Sum Cost of All Books
SELECT round(sum(cost), 2) 
AS cost
FROM books;

-- 04. Days Lived
