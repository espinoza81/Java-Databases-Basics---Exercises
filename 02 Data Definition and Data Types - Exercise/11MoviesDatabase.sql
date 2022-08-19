DROP DATABASE IF EXISTS Movies;

CREATE DATABASE Movies;

USE Movies;

CREATE TABLE `directors` (
  `id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `director_name` VARCHAR(200) NOT NULL,
 `notes` TEXT);
 
 INSERT INTO `directors` (`director_name`, `notes`) VALUES ('Ivan','proba');
 INSERT INTO `directors` (`director_name`) VALUES ('Dreagan');
 INSERT INTO `directors` (`director_name`, `notes`) VALUES ('Maria','film');
 INSERT INTO `directors` (`director_name`, `notes`) VALUES ('Ilia','serial');
 INSERT INTO `directors` (`director_name`, `notes`) VALUES ('Pesho','proba');

CREATE TABLE `genres` (
  `id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `genre_name` VARCHAR(200) NOT NULL,
 `notes` TEXT);
 
 INSERT INTO `genres` (`genre_name`, `notes`) VALUES ('Ivan','proba');
 INSERT INTO `genres` (`genre_name`) VALUES ('Dreagan');
 INSERT INTO `genres` (`genre_name`, `notes`) VALUES ('Maria','film');
 INSERT INTO `genres` (`genre_name`, `notes`) VALUES ('Ilia','serial');
 INSERT INTO `genres` (`genre_name`, `notes`) VALUES ('Pesho','proba');
 
 CREATE TABLE `categories` (
  `id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `category_name` VARCHAR(100) NOT NULL,
 `notes` TEXT);
 
 INSERT INTO `categories` (`category_name`, `notes`) VALUES ('komedia','proba');
 INSERT INTO `categories` (`category_name`) VALUES ('drama');
 INSERT INTO `categories` (`category_name`, `notes`) VALUES ('fentazi','film');
 INSERT INTO `categories` (`category_name`, `notes`) VALUES ('ekshan','serial');
 INSERT INTO `categories` (`category_name`, `notes`) VALUES ('detsko','proba');

 CREATE TABLE `movies` (
  `id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `title` VARCHAR(200) NOT NULL,
  `director_id` INT NOT NULL,
  `copyright_year` VARCHAR(4) NOT NULL,
  `length` INT,
  `genre_id` INT NOT NULL,
  `category_id` INT NOT NULL,
  `rating` INT,
 `notes` TEXT);
 
 INSERT INTO `movies` (`title`, `director_id`, `copyright_year`, `length`, `genre_id`, `category_id`, `rating`, `notes`) VALUES ('Shpionski svalki', 1, 1998, 320, 2, 1, 10, 'super zabavno');
 INSERT INTO `movies` (`title`, `director_id`, `copyright_year`, `length`, `genre_id`, `category_id`, `rating`, `notes`) VALUES ('Otneseni ot vihara', 2, 1999, 3320, 1, 2, 9, 'super dramatichno');
 INSERT INTO `movies` (`title`, `director_id`, `copyright_year`, `length`, `genre_id`, `category_id`, `rating`, `notes`) VALUES ('Avatar', 3, 2000, 3240, 4, 3, 8, 'super nerealno');
 INSERT INTO `movies` (`title`, `director_id`, `copyright_year`, `length`, `genre_id`, `category_id`, `rating`, `notes`) VALUES ('Golemia zriv', 4, 2020, 3205, 3, 4, 7, 'super serial');
 INSERT INTO `movies` (`title`, `director_id`, `copyright_year`, `genre_id`, `category_id`) VALUES ('Proba', 5, 2021, 5, 5);
