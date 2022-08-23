-- 01. Mountains and Peaks
CREATE TABLE mountains (
   id INT PRIMARY KEY,
   name VARCHAR(45));
   
CREATE TABLE peaks (
   id INT PRIMARY KEY,
   name VARCHAR(45),
   mountain_id INT,
CONSTRAINT fk_p_m
FOREIGN KEY (mountain_id)
REFERENCES mountains(id));
   
-- 02. Trip Organization
   
