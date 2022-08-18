CREATE TABLE `minions` (
  `id` INT NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `age` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE `towns` (
  `town_id` INT NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`town_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;