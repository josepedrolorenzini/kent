CREATE TABLE `car_rental`.`users` (`id_user` INT NOT NULL AUTO_INCREMENT , `email` VARCHAR(256) NOT NULL , `password` VARCHAR(256) NOT NULL , PRIMARY KEY (`id_user`)) ENGINE = InnoDB;

INSERT INTO `users` (`id_user`, `email`, `password`, `created_at`) 
VALUES (NULL, 'josep102@gmail.com', '1234', current_timestamp()), (NULL, 'admin', '1234', current_timestamp());


INSERT INTO `users` (`id_user`, `username`, `password`, `created_at`) 
VALUES (NULL, 'haris', '12345', current_timestamp()), (NULL, 'jose', '12345', current_timestamp());


INSERT INTO `admin` (`Admin_ID`, `username`, `password`, `created_at`, `car_ID`, `booking_ID`, `Level_of_permission`) 
VALUES (NULL, 'admin', MD5('12345'), current_timestamp(), '', '', ''), (NULL, 'haris', MD5('12345'), current_timestamp(), '', '', '');
UPDATE `users` SET `password` = MD5('1234') WHERE `users`.`id_user` = 2;

-- add index --
ALTER TABLE `art`.`paintings` ADD INDEX `yearOfWork` (`YearOfWork`); 

UPDATE `users` SET `password` = MD5('1234') WHERE `users`.`id_user` = 1; 
UPDATE `users` SET `password` = MD5('1234') WHERE `users`.`id_user` = 2; 
UPDATE `users` SET `password` = MD5('12345') WHERE `users`.`id_user` = 3; UPDATE `users` SET `password` = MD5('12345') WHERE `users`.`id_user` = 4; 

--update table --
INSERT INTO `search_car` (`search_ID`, `search_make`, `search_color`, `search_capacity`, `search_brands`, `search_model`, `pick_location`, `drop_location`, `user_ID`, `car_ID`) 
VALUES ('', 'sedan', 'red', '5', 'toyota', 'sedan', 'sydney', 'sydney', '1', NULL);
----updTE -- 
update books SET title = 'blink 182' , author = 'punk', disc = 'california' where id = 3;

--alter table--
ALTER TABLE `search_car` ADD `seach_text` VARCHAR(256) NULL DEFAULT NULL AFTER `car_ID`; 
ALTER TABLE `search_car` ADD `date_add` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER `seach_text`; 


-- create tables --
ALTER TABLE `car` ADD `atributes_ID` INT NULL AFTER `categories_ID`, ADD `images_ID` INT NULL AFTER `atributes_ID`, ADD `date_add` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER `images_ID`, ADD `date_update` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER `date_add`; 
CREATE TABLE `search_car` ( `search_ID` int(11) NOT NULL AUTO_INCREMENT, `user_ID` int(11) DEFAULT NULL, `car_ID` int(11) DEFAULT NULL, `seach_text` varchar(256) DEFAULT NULL, `date_add` date NOT NULL DEFAULT current_timestamp(), PRIMARY KEY (`search_ID`) ); 

CREATE TABLE `car` ( `car_ID` int(11) NOT NULL, `car_name` varchar(220) DEFAULT NULL, `categories_ID` int(11) DEFAULT NULL, `atributes_ID` int(11) DEFAULT NULL, `images_ID` int(11) DEFAULT NULL, `date_add` date NOT NULL DEFAULT current_timestamp(), `date_update` date NOT NULL DEFAULT current_timestamp(), PRIMARY KEY (`car_ID`) ); 

ALTER TABLE `user` CHANGE `customer_ID` `customer_ID` INT NOT NULL, CHANGE `car_owner_ID` `car_owner_ID` INT NOT NULL, CHANGE `admin_ID` `admin_ID` INT NOT NULL, CHANGE `moderator_ID` `moderator_ID` INT NOT NULL, CHANGE `agent_ID` `agent_ID` INT NOT NULL; 
ALTER TABLE `car_rental_nuevo_110922`.`type_user` ADD INDEX `permission_ID` (`permission_ID`);

ALTER TABLE `permission` CHANGE `DeleteP` `DeleteP` BOOLEAN NULL DEFAULT NULL, CHANGE `createP` `createP` BOOLEAN NULL DEFAULT NULL, CHANGE `updateP` `updateP` BOOLEAN NULL DEFAULT NULL;
ALTER TABLE `permission` CHANGE `DeleteP` `DeleteP` BOOLEAN NULL DEFAULT FALSE, CHANGE `createP` `createP` TINYINT(1) NULL DEFAULT '0', CHANGE `updateP` `updateP` TINYINT(1) NULL DEFAULT '0';

ALTER TABLE `permission` ADD `create_user` BOOLEAN NOT NULL DEFAULT FALSE AFTER `updateP`, ADD `delete_user` BOOLEAN NOT NULL DEFAULT FALSE AFTER `create_user`, ADD `update_user` BOOLEAN NOT NULL DEFAULT FALSE AFTER `delete_user`;


ALTER TABLE `attributes` DROP FOREIGN KEY `attributes_ibfk_1`; ALTER TABLE `attributes` ADD CONSTRAINT `attributes_ibfk_1` FOREIGN KEY (`group_attributes_ID`) REFERENCES `group_attributes`(`group_attributes_ID`) ON DELETE NO ACTION ON UPDATE CASCADE;

ALTER TABLE `permission` ADD `delete_review` BOOLEAN NOT NULL DEFAULT FALSE AFTER `update_user`, ADD `create_review` BOOLEAN NOT NULL DEFAULT FALSE AFTER `delete_review`, ADD `update_review` BOOLEAN NOT NULL DEFAULT FALSE AFTER `create_review`;

ALTER TABLE `car_rental_nuevo_110922`.`car_attributes` DROP INDEX `attributes_ID`, ADD INDEX `group_attributes_ID` (`group_attributes_ID`) USING BTREE;



ALTER TABLE `car_attributes` DROP FOREIGN KEY `car_attributes_ibfk_1`; ALTER TABLE `car_attributes` ADD CONSTRAINT `car_attributes_ibfk_1` FOREIGN KEY (`car_ID`) REFERENCES `car`(`car_ID`) ON DELETE NO ACTION ON UPDATE CASCADE; ALTER TABLE `car_attributes` DROP FOREIGN KEY `car_attributes_ibfk_2`; ALTER TABLE `car_attributes` ADD CONSTRAINT `car_attributes_ibfk_2` FOREIGN KEY (`attributes_ID`) REFERENCES `attributes`(`attributes_ID`) ON DELETE NO ACTION ON UPDATE CASCADE;

INSERT INTO `car_attributes` (`car_attributes_ID`, `car_ID`, `attributes_ID`) VALUES (NULL, '4', '1'), (NULL, '4', '9');



---- query user and type_user ---


SELECT user.username , type_user.name_type_user , user.type_user_ID FROM `user` 
left join type_user 
on user.type_user_ID = type_user.type_user_ID;


-- query --

INSERT INTO `user` (`user_ID`, `username`, `password`, `validate_identity`, `type_user_ID`, `date_add`, `date_update`) 
VALUES (NULL, 'customer1', '1234', '1', '5', current_timestamp(), current_timestamp()), (NULL, 'car owner1', '1234', '1', '3', current_timestamp(), current_timestamp());


INSERT INTO `group_attributes` (`group_attributes_ID`, `attribute_name`, `date_add`, `date_update`) VALUES ('1', 'title', current_timestamp(), current_timestamp()), (NULL, 'description', current_timestamp(), current_timestamp());
--not working --
ALTER TABLE `database_carrental`.`admin` 
ADD CONSTRAINT `admin_ID`
  FOREIGN KEY (`Admin_ID`)
  REFERENCES `database_carrental`.`admin_dashboard` (`admin_dashboard_ID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


  ALTER TABLE `database_carrental`.`admin` 
ADD CONSTRAINT `admin_ID`
  FOREIGN KEY (`Admin_ID`)
  REFERENCES `database_carrental`.`admin_dashboard` (`admin_dashboard_ID`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;


  $sql = "ALTER TABLE `car_rental_nuevo_final_110922`.`search_car` ADD INDEX `car_ID` (`car_ID`);";

--not working --

--working making field to can be null --

  ALTER TABLE `database_carrental`.`admin_dashboard` 
CHANGE COLUMN `add_car` `add_car` VARCHAR(220) NULL ,
CHANGE COLUMN `remove_car` `remove_car` VARCHAR(220) NULL ,
CHANGE COLUMN `edit_car_details` `edit_car_details` VARCHAR(220) NULL DEFAULT CURRENT_TIMESTAMP() ,
CHANGE COLUMN `start_date` `start_date` DATE NULL DEFAULT CURRENT_TIMESTAMP() ,
CHANGE COLUMN `end_date` `end_date` DATE NULL DEFAULT CURRENT_TIMESTAMP() ,
CHANGE COLUMN `user_ID` `user_ID` INT(11) NULL ,
CHANGE COLUMN `car_ID` `car_ID` INT(11) NULL ,
CHANGE COLUMN `customer_ID` `customer_ID` INT(11) NULL ,
CHANGE COLUMN `admin_ID` `admin_ID` INT(11) NULL ,
CHANGE COLUMN `booking_management` `booking_management` VARCHAR(220) NULL ,
CHANGE COLUMN `user_management` `user_management` VARCHAR(220) NULL ,
CHANGE COLUMN `car_management` `car_management` VARCHAR(220) NULL ,
CHANGE COLUMN `setting_ID` `setting_ID` INT(11) NULL ;



--- database status --- 

database_carrental.admin	analyze	status	OK



-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`sales_agent`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`sales_agent` (
  `agent_ID` INT(11) NOT NULL,
  `permission_ID` INT(11) NOT NULL,
  `email` VARCHAR(220) NOT NULL,
  PRIMARY KEY (`agent_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`permission`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`permission` (
  `permission_ID` INT(11) NOT NULL,
  `DeleteP` VARCHAR(220) NOT NULL,
  `createP` VARCHAR(220) NOT NULL,
  `updateP` VARCHAR(220) NOT NULL,
  `settings_ID` INT(11) NOT NULL,
  PRIMARY KEY (`permission_ID`),
  CONSTRAINT `fk_permission_sales_agent1`
    FOREIGN KEY (`permission_ID`)
    REFERENCES `mydb`.`sales_agent` (`permission_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`admin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`admin` (
  `Admin_ID` INT(11) NOT NULL,
  `username` VARCHAR(256) NOT NULL,
  `password` VARCHAR(256) NOT NULL,
  `created_at` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `car_ID` INT(11) NOT NULL,
  `booking_ID` INT(11) NOT NULL,
  `Level_of_permission` VARCHAR(256) NOT NULL,
  `user_id` VARCHAR(220) NULL,
  PRIMARY KEY (`Admin_ID`),
  INDEX `fk_admin_permission1_idx` (`Level_of_permission` ASC) VISIBLE,
  CONSTRAINT `fk_admin_permission1`
    FOREIGN KEY (`Level_of_permission`)
    REFERENCES `mydb`.`permission` (`permission_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`login`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`login` (
  `login_ID` INT(11) NOT NULL,
  `firstname` VARCHAR(220) NOT NULL,
  `lastname` VARCHAR(220) NOT NULL,
  `password` VARCHAR(220) NOT NULL,
  `admin_ID` INT(11) NOT NULL,
  `car_owner_ID` INT(11) NOT NULL,
  `customer_ID` INT(11) NOT NULL,
  `user_ID` INT(11) NOT NULL,
  PRIMARY KEY (`login_ID`),
  INDEX `fk_login_admin1_idx` (`admin_ID` ASC) VISIBLE,
  CONSTRAINT `fk_login_admin1`
    FOREIGN KEY (`admin_ID`)
    REFERENCES `mydb`.`admin` (`Admin_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`car_owner`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`car_owner` (
  `car_owner` INT(11) NOT NULL,
  `firstname` VARCHAR(220) NOT NULL,
  `lastname` VARCHAR(220) NOT NULL,
  `email` VARCHAR(220) NOT NULL,
  `owner_credentials` VARCHAR(220) NOT NULL,
  `phone_number` VARCHAR(220) NOT NULL,
  `password` VARCHAR(220) NOT NULL,
  `car_ID` INT(11) NOT NULL,
  `user_ID` INT(11) NOT NULL,
  `review_ID` INT(11) NOT NULL,
  `level_permissionl` VARCHAR(256) NOT NULL,
  `car_ownercol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`car_owner`),
  INDEX `fk_car_owner_permission1_idx` (`level_permissionl` ASC) VISIBLE,
  CONSTRAINT `fk_car_owner_login1`
    FOREIGN KEY (`car_owner`)
    REFERENCES `mydb`.`login` (`car_owner_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_owner_login2`
    FOREIGN KEY (`car_owner`)
    REFERENCES `mydb`.`login` (`car_owner_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_owner_permission1`
    FOREIGN KEY (`level_permissionl`)
    REFERENCES `mydb`.`permission` (`permission_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`register`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`register` (
  `register_ID` INT(11) NOT NULL,
  `firstname` VARCHAR(220) NOT NULL,
  `lastname` VARCHAR(220) NOT NULL,
  `created_at` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `email` VARCHAR(220) NOT NULL,
  `password` VARCHAR(220) NOT NULL,
  `user_ID` INT(11) NOT NULL,
  `validation_identitty` VARCHAR(220) NOT NULL,
  `car_owner_car_owner` INT(11) NOT NULL,
  PRIMARY KEY (`register_ID`, `car_owner_car_owner`),
  INDEX `fk_register_car_owner1_idx` (`car_owner_car_owner` ASC) INVISIBLE,
  INDEX `validation_identity` (`validation_identitty` ASC) VISIBLE,
  INDEX `fk_register_login1_idx` (`user_ID` ASC) VISIBLE,
  CONSTRAINT `fk_register_car_owner1`
    FOREIGN KEY (`car_owner_car_owner`)
    REFERENCES `mydb`.`car_owner` (`car_owner`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_register_car_owner2`
    FOREIGN KEY (`validation_identitty`)
    REFERENCES `mydb`.`car_owner` (`owner_credentials`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_register_login1`
    FOREIGN KEY (`user_ID`)
    REFERENCES `mydb`.`login` (`user_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_register_admin_dashboard1`
    FOREIGN KEY (`user_ID`)
    REFERENCES `mydb`.`admin_dashboard` (`user_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_register_admin_dashboard2`
    FOREIGN KEY (`validation_identitty`)
    REFERENCES `mydb`.`admin_dashboard` (`validate_identity`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`user_dashboard`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`user_dashboard` (
  `my_booking` VARCHAR(220) NOT NULL,
  `firstname` VARCHAR(220) NOT NULL,
  `lastname` VARCHAR(220) NOT NULL,
  `email` VARCHAR(220) NOT NULL,
  `total_days` VARCHAR(220) NOT NULL,
  `car_name` VARCHAR(220) NOT NULL,
  `start_date` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `end_date` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `user_ID` INT(11) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`admin_dashboard`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`admin_dashboard` (
  `admin_dashboard_ID` INT(11) NOT NULL,
  `add_car` VARCHAR(220) NOT NULL,
  `remove_car` VARCHAR(220) NOT NULL,
  `edit_car_details` VARCHAR(220) NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `start_date` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `end_date` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `user_ID` INT(11) NOT NULL,
  `car_ID` INT(11) NOT NULL,
  `customer_ID` INT(11) NOT NULL,
  `admin_ID` INT(11) NOT NULL,
  `booking_management` VARCHAR(220) NOT NULL,
  `user_management` VARCHAR(220) NOT NULL,
  `car_management` VARCHAR(220) NOT NULL,
  `setting_ID` INT(11) NOT NULL,
  `admin_Admin_ID` INT(11) NOT NULL,
  `validate_identity` VARCHAR(45) NULL,
  `admin_dashboardcol` VARCHAR(45) NULL,
  `login_login_ID` INT(11) NOT NULL,
  PRIMARY KEY (`admin_dashboard_ID`, `login_login_ID`),
  INDEX `admin_dashboard_ID` (`admin_dashboard_ID` ASC) VISIBLE,
  INDEX `fk_admin_dashboard_admin_idx` (`admin_Admin_ID` ASC) VISIBLE,
  INDEX `fk_admin_dashboard_register1_idx` (`validate_identity` ASC) VISIBLE,
  INDEX `fk_admin_dashboard_user_dashboard1_idx` (`user_ID` ASC) VISIBLE,
  INDEX `fk_admin_dashboard_login1_idx` (`login_login_ID` ASC) VISIBLE,
  CONSTRAINT `fk_admin_dashboard_admin`
    FOREIGN KEY (`admin_Admin_ID`)
    REFERENCES `mydb`.`admin` (`Admin_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_admin_dashboard_register1`
    FOREIGN KEY (`validate_identity`)
    REFERENCES `mydb`.`register` (`validation_identitty`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_admin_dashboard_user_dashboard1`
    FOREIGN KEY (`user_ID`)
    REFERENCES `mydb`.`user_dashboard` (`user_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_admin_dashboard_login1`
    FOREIGN KEY (`login_login_ID`)
    REFERENCES `mydb`.`login` (`login_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`search_car`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`search_car` (
  `search_ID` INT(11) NOT NULL,
  `search_make` VARCHAR(220) NOT NULL,
  `search_color` VARCHAR(220) NOT NULL,
  `search_capacity` VARCHAR(220) NOT NULL,
  `search_brands` VARCHAR(220) NOT NULL,
  `search_model` VARCHAR(220) NOT NULL,
  `pick_location` VARCHAR(220) NOT NULL,
  `drop_location` VARCHAR(220) NOT NULL,
  `user_ID` INT(11) NOT NULL,
  `car_ID` VARCHAR(220) NOT NULL,
  PRIMARY KEY (`search_ID`),
  INDEX `fk_search_car_car1_idx` (`car_ID` ASC) VISIBLE,
  CONSTRAINT `fk_search_car_car1`
    FOREIGN KEY (`car_ID`)
    REFERENCES `mydb`.`car` (`car_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`car`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`car` (
  `car_ID` INT(11) NOT NULL,
  `car_name` VARCHAR(220) NOT NULL,
  `car_type` VARCHAR(220) NOT NULL,
  `rent` INT(11) NOT NULL,
  `color` VARCHAR(220) NOT NULL,
  `model` INT(11) NOT NULL,
  `make` VARCHAR(220) NOT NULL,
  `capacity` INT(11) NOT NULL,
  `vehicles-img` VARCHAR(220) NOT NULL,
  `location` VARCHAR(220) NOT NULL,
  `from_date` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `to_date` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `status` VARCHAR(220) NOT NULL,
  `cutomer_ID` INT(11) NOT NULL,
  `agent_ID` INT(11) NOT NULL,
  INDEX `fk_car_admin1_idx` (`car_ID` ASC) VISIBLE,
  INDEX `fk_car_search_car1_idx` (`capacity` ASC) VISIBLE,
  INDEX `fk_car_search_car2_idx` (`make` ASC) VISIBLE,
  INDEX `fk_car_search_car3_idx` (`model` ASC) VISIBLE,
  INDEX `fk_car_search_car4_idx` (`color` ASC) VISIBLE,
  INDEX `fk_car_sales_agent1_idx` (`agent_ID` ASC) VISIBLE,
  INDEX `fk_car_admin_dashboard1_idx` (`cutomer_ID` ASC) VISIBLE,
  INDEX `fk_car_booking1_idx` (`status` ASC) VISIBLE,
  CONSTRAINT `fk_car_admin1`
    FOREIGN KEY (`car_ID`)
    REFERENCES `mydb`.`admin` (`car_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_search_car1`
    FOREIGN KEY (`capacity`)
    REFERENCES `mydb`.`search_car` (`search_capacity`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_search_car2`
    FOREIGN KEY (`make`)
    REFERENCES `mydb`.`search_car` (`search_make`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_search_car3`
    FOREIGN KEY (`model`)
    REFERENCES `mydb`.`search_car` (`search_brands`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_search_car4`
    FOREIGN KEY (`color`)
    REFERENCES `mydb`.`search_car` (`search_color`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_sales_agent1`
    FOREIGN KEY (`agent_ID`)
    REFERENCES `mydb`.`sales_agent` (`agent_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_admin_dashboard1`
    FOREIGN KEY (`cutomer_ID`)
    REFERENCES `mydb`.`admin_dashboard` (`customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_booking1`
    FOREIGN KEY (`status`)
    REFERENCES `mydb`.`booking` (`status`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`booking`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`booking` (
  `booking_ID` INT(11) NOT NULL,
  `car_ID` INT(11) NOT NULL,
  `user_email` VARCHAR(220) NOT NULL,
  `status` VARCHAR(220) NOT NULL,
  `date_pick_up` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `date_drop_off` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `Third_party_payment` VARCHAR(220) NOT NULL,
  `booking_No` INT(11) NOT NULL,
  PRIMARY KEY (`booking_ID`),
  INDEX `fk_booking_car1_idx` (`car_ID` ASC) VISIBLE,
  CONSTRAINT `fk_booking_admin_dashboard1`
    FOREIGN KEY (`booking_ID`)
    REFERENCES `mydb`.`admin_dashboard` (`booking_management`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_booking_car1`
    FOREIGN KEY (`car_ID`)
    REFERENCES `mydb`.`car` (`car_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`car_owner_dashboard`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`car_owner_dashboard` (
  `owner_ID` INT(11) NOT NULL,
  `add_car` VARCHAR(220) NOT NULL,
  `remove_car` VARCHAR(220) NOT NULL,
  `edit_car_details` VARCHAR(220) NOT NULL,
  `booking_ID` INT(11) NOT NULL,
  `user_ID` INT(11) NOT NULL,
  `car_ID` INT(11) NOT NULL,
  `customer_ID` INT(11) NOT NULL,
  `car_owner_ID_delete` INT(11) NOT NULL,
  `setting_ID` INT(11) NOT NULL,
  `car_owner_ID` INT(11) NOT NULL,
  PRIMARY KEY (`owner_ID`, `car_owner_ID`),
  INDEX `fk_car_owner_dashboard_car_owner1_idx` (`car_owner_ID` ASC) VISIBLE,
  CONSTRAINT `fk_car_owner_dashboard_car_owner1`
    FOREIGN KEY (`car_owner_ID`)
    REFERENCES `mydb`.`car_owner` (`car_owner`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customer` (
  `customer_ID` INT(11) NOT NULL,
  `firstname` VARCHAR(220) NOT NULL,
  `lastname` VARCHAR(220) NOT NULL,
  `email` VARCHAR(220) NOT NULL,
  `car_ID` INT(11) NOT NULL,
  `user_ID` INT(11) NOT NULL,
  `review_ID` INT(11) NOT NULL,
  `password` VARCHAR(220) NOT NULL,
  `customer_credentials` VARCHAR(220) NOT NULL,
  PRIMARY KEY (`customer_ID`),
  INDEX `fk_customer_register1_idx` (`customer_credentials` ASC) VISIBLE,
  CONSTRAINT `fk_customer_admin_dashboard1`
    FOREIGN KEY (`customer_ID`)
    REFERENCES `mydb`.`admin_dashboard` (`customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_customer_register1`
    FOREIGN KEY (`customer_credentials`)
    REFERENCES `mydb`.`register` (`validation_identitty`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_customer_car1`
    FOREIGN KEY (`customer_ID`)
    REFERENCES `mydb`.`car` (`cutomer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`moderators`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`moderators` (
  `moderator_ID` INT(11) NOT NULL,
  `firstname` VARCHAR(220) NOT NULL,
  `lastname` VARCHAR(220) NOT NULL,
  `email` VARCHAR(220) NOT NULL,
  `permission_ID` INT(11) NOT NULL,
  `user_ID` INT(11) NOT NULL,
  `review_ID` INT(11) NOT NULL,
  `manage_comments` VARCHAR(220) NOT NULL,
  PRIMARY KEY (`moderator_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`reviews`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`reviews` (
  `reviewID` INT(11) NOT NULL,
  `customerID` INT(11) NOT NULL,
  `comments` VARCHAR(220) NOT NULL,
  PRIMARY KEY (`reviewID`),
  INDEX `fk_reviews_customer1_idx` (`customerID` ASC) VISIBLE,
  CONSTRAINT `fk_reviews_moderators1`
    FOREIGN KEY (`reviewID`)
    REFERENCES `mydb`.`moderators` (`review_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_reviews_customer1`
    FOREIGN KEY (`customerID`)
    REFERENCES `mydb`.`customer` (`customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`settings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`settings` (
  `settings_ID` INT(11) NOT NULL,
  `profile` VARCHAR(220) NOT NULL,
  `bookings` VARCHAR(220) NOT NULL,
  `customer_owner_ID` INT(11) NOT NULL,
  `admin_ID` INT(11) NOT NULL,
  `level_of_permission` VARCHAR(220) NOT NULL,
  PRIMARY KEY (`settings_ID`),
  CONSTRAINT `fk_settings_admin_dashboard1`
    FOREIGN KEY (`settings_ID`)
    REFERENCES `mydb`.`admin_dashboard` (`setting_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`users` (
  `id_user` INT(11) NOT NULL,
  `username` VARCHAR(256) NOT NULL,
  `password` VARCHAR(256) NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `validation_identitty` VARCHAR(45) NOT NULL,
  `level_permission` VARCHAR(256) NOT NULL,
  PRIMARY KEY (`id_user`),
  INDEX `fk_users_register1_idx` (`validation_identitty` ASC) VISIBLE,
  INDEX `fk_users_permission1_idx` (`level_permission` ASC) VISIBLE,
  CONSTRAINT `fk_users_register1`
    FOREIGN KEY (`validation_identitty`)
    REFERENCES `mydb`.`register` (`validation_identitty`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_admin_dashboard1`
    FOREIGN KEY (`id_user`)
    REFERENCES `mydb`.`admin_dashboard` (`user_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_login1`
    FOREIGN KEY (`id_user`)
    REFERENCES `mydb`.`login` (`user_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_permission1`
    FOREIGN KEY (`level_permission`)
    REFERENCES `mydb`.`permission` (`permission_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


-----create database carrental --

-- MySQL Script generated by MySQL Workbench
-- Tue Sep  6 16:10:53 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema carrental_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema carrental_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `carrental_db` DEFAULT CHARACTER SET utf8mb4 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`sales_agent`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`sales_agent` (
  `agent_ID` INT(11) NOT NULL,
  `permission_ID` INT(11) NOT NULL,
  `email` VARCHAR(220) NOT NULL,
  PRIMARY KEY (`agent_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`permission`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`permission` (
  `permission_ID` INT(11) NOT NULL,
  `DeleteP` VARCHAR(220) NOT NULL,
  `createP` VARCHAR(220) NOT NULL,
  `updateP` VARCHAR(220) NOT NULL,
  `settings_ID` INT(11) NOT NULL,
  PRIMARY KEY (`permission_ID`),
  CONSTRAINT `fk_permission_sales_agent1`
    FOREIGN KEY (`permission_ID`)
    REFERENCES `mydb`.`sales_agent` (`permission_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`admin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`admin` (
  `Admin_ID` INT(11) NOT NULL,
  `username` VARCHAR(256) NOT NULL,
  `password` VARCHAR(256) NOT NULL,
  `created_at` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `car_ID` INT(11) NOT NULL,
  `booking_ID` INT(11) NOT NULL,
  `Level_of_permission` VARCHAR(256) NOT NULL,
  `user_id` VARCHAR(220) NOT NULL,
  PRIMARY KEY (`Admin_ID`),
  INDEX `fk_admin_permission1_idx` (`Level_of_permission`),
  CONSTRAINT `fk_admin_permission1`
    FOREIGN KEY (`Level_of_permission`)
    REFERENCES `mydb`.`permission` (`permission_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`login`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`login` (
  `login_ID` INT(11) NOT NULL,
  `firstname` VARCHAR(220) NOT NULL,
  `lastname` VARCHAR(220) NOT NULL,
  `password` VARCHAR(220) NOT NULL,
  `admin_ID` INT(11) NOT NULL,
  `car_owner_ID` INT(11) NOT NULL,
  `customer_ID` INT(11) NOT NULL,
  `user_ID` INT(11) NOT NULL,
  PRIMARY KEY (`login_ID`),
  INDEX `fk_login_admin1_idx` (`admin_ID` ASC) VISIBLE,
  CONSTRAINT `fk_login_admin1`
    FOREIGN KEY (`admin_ID`)
    REFERENCES `mydb`.`admin` (`Admin_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`car_owner`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`car_owner` (
  `car_owner` INT(11) NOT NULL,
  `firstname` VARCHAR(220) NOT NULL,
  `lastname` VARCHAR(220) NOT NULL,
  `email` VARCHAR(220) NOT NULL,
  `owner_credentials` VARCHAR(220) NOT NULL,
  `phone_number` VARCHAR(220) NOT NULL,
  `password` VARCHAR(220) NOT NULL,
  `car_ID` INT(11) NOT NULL,
  `user_ID` INT(11) NOT NULL,
  `review_ID` INT(11) NOT NULL,
  `level_permissionl` VARCHAR(256) NOT NULL,
  `car_ownercol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`car_owner`),
  INDEX `fk_car_owner_permission1_idx` (`level_permissionl` ASC) VISIBLE,
  CONSTRAINT `fk_car_owner_login1`
    FOREIGN KEY (`car_owner`)
    REFERENCES `mydb`.`login` (`car_owner_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_owner_login2`
    FOREIGN KEY (`car_owner`)
    REFERENCES `mydb`.`login` (`car_owner_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_owner_permission1`
    FOREIGN KEY (`level_permissionl`)
    REFERENCES `mydb`.`permission` (`permission_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`register`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`register` (
  `register_ID` INT(11) NOT NULL,
  `firstname` VARCHAR(220) NOT NULL,
  `lastname` VARCHAR(220) NOT NULL,
  `created_at` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `email` VARCHAR(220) NOT NULL,
  `password` VARCHAR(220) NOT NULL,
  `user_ID` INT(11) NOT NULL,
  `validation_identitty` VARCHAR(220) NOT NULL,
  `car_owner_car_owner` INT(11) NOT NULL,
  PRIMARY KEY (`register_ID`, `car_owner_car_owner`),
  INDEX `fk_register_car_owner1_idx` (`car_owner_car_owner` ASC) INVISIBLE,
  INDEX `validation_identity` (`validation_identitty` ASC) VISIBLE,
  INDEX `fk_register_login1_idx` (`user_ID` ASC) VISIBLE,
  CONSTRAINT `fk_register_car_owner1`
    FOREIGN KEY (`car_owner_car_owner`)
    REFERENCES `mydb`.`car_owner` (`car_owner`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_register_car_owner2`
    FOREIGN KEY (`validation_identitty`)
    REFERENCES `mydb`.`car_owner` (`owner_credentials`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_register_login1`
    FOREIGN KEY (`user_ID`)
    REFERENCES `mydb`.`login` (`user_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_register_admin_dashboard1`
    FOREIGN KEY (`user_ID`)
    REFERENCES `mydb`.`admin_dashboard` (`user_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_register_admin_dashboard2`
    FOREIGN KEY (`validation_identitty`)
    REFERENCES `mydb`.`admin_dashboard` (`validate_identity`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`user_dashboard`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`user_dashboard` (
  `my_booking` VARCHAR(220) NOT NULL,
  `firstname` VARCHAR(220) NOT NULL,
  `lastname` VARCHAR(220) NOT NULL,
  `email` VARCHAR(220) NOT NULL,
  `total_days` VARCHAR(220) NOT NULL,
  `car_name` VARCHAR(220) NOT NULL,
  `start_date` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `end_date` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `user_ID` INT(11) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`admin_dashboard`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`admin_dashboard` (
  `admin_dashboard_ID` INT(11) NOT NULL,
  `add_car` VARCHAR(220) NOT NULL,
  `remove_car` VARCHAR(220) NOT NULL,
  `edit_car_details` VARCHAR(220) NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `start_date` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `end_date` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `user_ID` INT(11) NOT NULL,
  `car_ID` INT(11) NOT NULL,
  `customer_ID` INT(11) NOT NULL,
  `admin_ID` INT(11) NOT NULL,
  `booking_management` VARCHAR(220) NOT NULL,
  `user_management` VARCHAR(220) NOT NULL,
  `car_management` VARCHAR(220) NOT NULL,
  `setting_ID` INT(11) NOT NULL,
  `admin_Admin_ID` INT(11) NOT NULL,
  `validate_identity` VARCHAR(45) NULL,
  `admin_dashboardcol` VARCHAR(45) NULL,
  `login_login_ID` INT(11) NOT NULL,
  PRIMARY KEY (`admin_dashboard_ID`, `login_login_ID`),
  INDEX `admin_dashboard_ID` (`admin_dashboard_ID` ASC) VISIBLE,
  INDEX `fk_admin_dashboard_admin_idx` (`admin_Admin_ID` ASC) VISIBLE,
  INDEX `fk_admin_dashboard_register1_idx` (`validate_identity` ASC) VISIBLE,
  INDEX `fk_admin_dashboard_user_dashboard1_idx` (`user_ID` ASC) VISIBLE,
  INDEX `fk_admin_dashboard_login1_idx` (`login_login_ID` ASC) VISIBLE,
  CONSTRAINT `fk_admin_dashboard_admin`
    FOREIGN KEY (`admin_Admin_ID`)
    REFERENCES `mydb`.`admin` (`Admin_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_admin_dashboard_register1`
    FOREIGN KEY (`validate_identity`)
    REFERENCES `mydb`.`register` (`validation_identitty`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_admin_dashboard_user_dashboard1`
    FOREIGN KEY (`user_ID`)
    REFERENCES `mydb`.`user_dashboard` (`user_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_admin_dashboard_login1`
    FOREIGN KEY (`login_login_ID`)
    REFERENCES `mydb`.`login` (`login_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`search_car`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`search_car` (
  `search_ID` INT(11) NOT NULL,
  `search_make` VARCHAR(220) NOT NULL,
  `search_color` VARCHAR(220) NOT NULL,
  `search_capacity` VARCHAR(220) NOT NULL,
  `search_brands` VARCHAR(220) NOT NULL,
  `search_model` VARCHAR(220) NOT NULL,
  `pick_location` VARCHAR(220) NOT NULL,
  `drop_location` VARCHAR(220) NOT NULL,
  `user_ID` INT(11) NOT NULL,
  `car_ID` VARCHAR(220) NOT NULL,
  PRIMARY KEY (`search_ID`),
  INDEX `fk_search_car_car1_idx` (`car_ID` ASC) VISIBLE,
  CONSTRAINT `fk_search_car_car1`
    FOREIGN KEY (`car_ID`)
    REFERENCES `mydb`.`car` (`car_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`car`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`car` (
  `car_ID` INT(11) NOT NULL,
  `car_name` VARCHAR(220) NOT NULL,
  `car_type` VARCHAR(220) NOT NULL,
  `rent` INT(11) NOT NULL,
  `color` VARCHAR(220) NOT NULL,
  `model` INT(11) NOT NULL,
  `make` VARCHAR(220) NOT NULL,
  `capacity` INT(11) NOT NULL,
  `vehicles-img` VARCHAR(220) NOT NULL,
  `location` VARCHAR(220) NOT NULL,
  `from_date` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `to_date` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `status` VARCHAR(220) NOT NULL,
  `cutomer_ID` INT(11) NOT NULL,
  `agent_ID` INT(11) NOT NULL,
  INDEX `fk_car_admin1_idx` (`car_ID` ASC) VISIBLE,
  INDEX `fk_car_search_car1_idx` (`capacity` ASC) VISIBLE,
  INDEX `fk_car_search_car2_idx` (`make` ASC) VISIBLE,
  INDEX `fk_car_search_car3_idx` (`model` ASC) VISIBLE,
  INDEX `fk_car_search_car4_idx` (`color` ASC) VISIBLE,
  INDEX `fk_car_sales_agent1_idx` (`agent_ID` ASC) VISIBLE,
  INDEX `fk_car_admin_dashboard1_idx` (`cutomer_ID` ASC) VISIBLE,
  INDEX `fk_car_booking1_idx` (`status` ASC) VISIBLE,
  CONSTRAINT `fk_car_admin1`
    FOREIGN KEY (`car_ID`)
    REFERENCES `mydb`.`admin` (`car_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_search_car1`
    FOREIGN KEY (`capacity`)
    REFERENCES `mydb`.`search_car` (`search_capacity`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_search_car2`
    FOREIGN KEY (`make`)
    REFERENCES `mydb`.`search_car` (`search_make`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_search_car3`
    FOREIGN KEY (`model`)
    REFERENCES `mydb`.`search_car` (`search_brands`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_search_car4`
    FOREIGN KEY (`color`)
    REFERENCES `mydb`.`search_car` (`search_color`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_sales_agent1`
    FOREIGN KEY (`agent_ID`)
    REFERENCES `mydb`.`sales_agent` (`agent_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_admin_dashboard1`
    FOREIGN KEY (`cutomer_ID`)
    REFERENCES `mydb`.`admin_dashboard` (`customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_booking1`
    FOREIGN KEY (`status`)
    REFERENCES `mydb`.`booking` (`status`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`booking`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`booking` (
  `booking_ID` INT(11) NOT NULL,
  `car_ID` INT(11) NOT NULL,
  `user_email` VARCHAR(220) NOT NULL,
  `status` VARCHAR(220) NOT NULL,
  `date_pick_up` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `date_drop_off` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `Third_party_payment` VARCHAR(220) NOT NULL,
  `booking_No` INT(11) NOT NULL,
  PRIMARY KEY (`booking_ID`),
  INDEX `fk_booking_car1_idx` (`car_ID` ASC) VISIBLE,
  CONSTRAINT `fk_booking_admin_dashboard1`
    FOREIGN KEY (`booking_ID`)
    REFERENCES `mydb`.`admin_dashboard` (`booking_management`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_booking_car1`
    FOREIGN KEY (`car_ID`)
    REFERENCES `mydb`.`car` (`car_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`car_owner_dashboard`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`car_owner_dashboard` (
  `owner_ID` INT(11) NOT NULL,
  `add_car` VARCHAR(220) NOT NULL,
  `remove_car` VARCHAR(220) NOT NULL,
  `edit_car_details` VARCHAR(220) NOT NULL,
  `booking_ID` INT(11) NOT NULL,
  `user_ID` INT(11) NOT NULL,
  `car_ID` INT(11) NOT NULL,
  `customer_ID` INT(11) NOT NULL,
  `car_owner_ID_delete` INT(11) NOT NULL,
  `setting_ID` INT(11) NOT NULL,
  `car_owner_ID` INT(11) NOT NULL,
  PRIMARY KEY (`owner_ID`, `car_owner_ID`),
  INDEX `fk_car_owner_dashboard_car_owner1_idx` (`car_owner_ID` ASC) VISIBLE,
  CONSTRAINT `fk_car_owner_dashboard_car_owner1`
    FOREIGN KEY (`car_owner_ID`)
    REFERENCES `mydb`.`car_owner` (`car_owner`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customer` (
  `customer_ID` INT(11) NOT NULL,
  `firstname` VARCHAR(220) NOT NULL,
  `lastname` VARCHAR(220) NOT NULL,
  `email` VARCHAR(220) NOT NULL,
  `car_ID` INT(11) NOT NULL,
  `user_ID` INT(11) NOT NULL,
  `review_ID` INT(11) NOT NULL,
  `password` VARCHAR(220) NOT NULL,
  `customer_credentials` VARCHAR(220) NOT NULL,
  PRIMARY KEY (`customer_ID`),
  INDEX `fk_customer_register1_idx` (`customer_credentials` ASC) VISIBLE,
  CONSTRAINT `fk_customer_admin_dashboard1`
    FOREIGN KEY (`customer_ID`)
    REFERENCES `mydb`.`admin_dashboard` (`customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_customer_register1`
    FOREIGN KEY (`customer_credentials`)
    REFERENCES `mydb`.`register` (`validation_identitty`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_customer_car1`
    FOREIGN KEY (`customer_ID`)
    REFERENCES `mydb`.`car` (`cutomer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`moderators`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`moderators` (
  `moderator_ID` INT(11) NOT NULL,
  `firstname` VARCHAR(220) NOT NULL,
  `lastname` VARCHAR(220) NOT NULL,
  `email` VARCHAR(220) NOT NULL,
  `permission_ID` INT(11) NOT NULL,
  `user_ID` INT(11) NOT NULL,
  `review_ID` INT(11) NOT NULL,
  `manage_comments` VARCHAR(220) NOT NULL,
  PRIMARY KEY (`moderator_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`reviews`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`reviews` (
  `reviewID` INT(11) NOT NULL,
  `customerID` INT(11) NOT NULL,
  `comments` VARCHAR(220) NOT NULL,
  PRIMARY KEY (`reviewID`),
  INDEX `fk_reviews_customer1_idx` (`customerID` ASC) VISIBLE,
  CONSTRAINT `fk_reviews_moderators1`
    FOREIGN KEY (`reviewID`)
    REFERENCES `mydb`.`moderators` (`review_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_reviews_customer1`
    FOREIGN KEY (`customerID`)
    REFERENCES `mydb`.`customer` (`customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`settings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`settings` (
  `settings_ID` INT(11) NOT NULL,
  `profile` VARCHAR(220) NOT NULL,
  `bookings` VARCHAR(220) NOT NULL,
  `customer_owner_ID` INT(11) NOT NULL,
  `admin_ID` INT(11) NOT NULL,
  `level_of_permission` VARCHAR(220) NOT NULL,
  PRIMARY KEY (`settings_ID`),
  CONSTRAINT `fk_settings_admin_dashboard1`
    FOREIGN KEY (`settings_ID`)
    REFERENCES `mydb`.`admin_dashboard` (`setting_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`users` (
  `id_user` INT(11) NOT NULL,
  `username` VARCHAR(256) NOT NULL,
  `password` VARCHAR(256) NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `validation_identitty` VARCHAR(45) NOT NULL,
  `level_permission` VARCHAR(256) NOT NULL,
  PRIMARY KEY (`id_user`),
  INDEX `fk_users_register1_idx` (`validation_identitty` ASC) VISIBLE,
  INDEX `fk_users_permission1_idx` (`level_permission` ASC) VISIBLE,
  CONSTRAINT `fk_users_register1`
    FOREIGN KEY (`validation_identitty`)
    REFERENCES `mydb`.`register` (`validation_identitty`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_admin_dashboard1`
    FOREIGN KEY (`id_user`)
    REFERENCES `mydb`.`admin_dashboard` (`user_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_login1`
    FOREIGN KEY (`id_user`)
    REFERENCES `mydb`.`login` (`user_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_permission1`
    FOREIGN KEY (`level_permission`)
    REFERENCES `mydb`.`permission` (`permission_ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

USE `carrental_db` ;

-- -----------------------------------------------------
-- Table `carrental_db`.`permissions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrental_db`.`permissions` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `permission` VARCHAR(255) CHARACTER SET 'latin1' NOT NULL,
  `createuser` VARCHAR(255) NULL DEFAULT NULL,
  `deleteuser` VARCHAR(255) NULL DEFAULT NULL,
  `createbid` VARCHAR(255) NULL DEFAULT NULL,
  `updatebid` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `carrental_db`.`tbladmin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrental_db`.`tbladmin` (
  `ID` INT(10) NOT NULL AUTO_INCREMENT,
  `Staffid` INT(10) NULL DEFAULT NULL,
  `AdminName` VARCHAR(120) NULL DEFAULT NULL,
  `UserName` VARCHAR(120) NULL DEFAULT NULL,
  `FirstName` VARCHAR(255) NULL DEFAULT NULL,
  `LastName` VARCHAR(255) NULL DEFAULT NULL,
  `MobileNumber` BIGINT(10) NULL DEFAULT NULL,
  `Email` VARCHAR(200) NULL DEFAULT NULL,
  `Status` INT(11) NOT NULL DEFAULT 1,
  `Photo` VARCHAR(255) CHARACTER SET 'latin1' NOT NULL DEFAULT 'avatar15.jpg',
  `Password` VARCHAR(120) NULL DEFAULT NULL,
  `AdminRegdate` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(),
  PRIMARY KEY (`ID`))
ENGINE = InnoDB
AUTO_INCREMENT = 30
DEFAULT CHARACTER SET = utf8mb4;

