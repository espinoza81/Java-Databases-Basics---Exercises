-- 01. Records’ Count
SELECT count(id)
FROM wizzard_deposits;

-- 02. Longest Magic Wand
SELECT max(magic_wand_size) AS 'longest_magic_wand'
FROM wizzard_deposits;

-- 03. Longest Magic Wand per Deposit Groups
SELECT deposit_group, max(magic_wand_size) AS 'longest_magic_wand'
FROM wizzard_deposits
GROUP BY deposit_group
ORDER BY longest_magic_wand, deposit_group;

-- 04. Smallest Deposit Group per Magic Wand Size
SELECT deposit_group
FROM wizzard_deposits
GROUP BY deposit_group
ORDER BY avg(magic_wand_size)
LIMIT 1;

-- 05. Deposits Sum
