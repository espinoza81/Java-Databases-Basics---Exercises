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
SELECT v.driver_id, v.vehicle_type, concat_ws(' ', d.first_name, d.last_name) AS 'driver_name'
FROM vehicles AS v
INNER JOIN campers AS d 
ON v.driver_id = d.id;

-- 03. SoftUni Hiking

