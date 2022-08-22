-- 01. Records’ Count
SELECT count(id)
FROM wizzard_deposits;

-- 02. Longest Magic Wand
SELECT max(magic_wand_size) AS 'longest_magic_wand'
FROM wizzard_deposits;

-- 03. Longest Magic Wand per Deposit Groups
