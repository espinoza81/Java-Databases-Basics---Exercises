-- 01. Mountains and Peaks
CREATE TABLE mountains (
   id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(45));
   
CREATE TABLE peaks (
   id INT PRIMARY KEY AUTO_INCREMENT,
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
SELECT r.starting_point, r.end_point, r.leader_id, concat_ws(' ', c.first_name, c.last_name) AS 'leader_name'
FROM routes AS r
INNER JOIN campers AS c 
ON r.leader_id = c.id;

-- 04. Delete Mountains
CREATE TABLE mountains (
   id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(45));
   
CREATE TABLE peaks (
   id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(45),
   mountain_id INT,
CONSTRAINT fk_p_m
FOREIGN KEY (mountain_id)
REFERENCES mountains(id)
ON DELETE CASCADE);
