-- MySQL Workbench Synchronization
-- Generated: 2022-09-08 17:05
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: jplor

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE TABLE IF NOT EXISTS `new_car_rental_2`.`admin_dashboard` (
  `admin_dashboard_ID` INT(11) NOT NULL,
  `add_car` VARCHAR(220) NOT NULL,
  `remove_car` VARCHAR(220) NOT NULL,
  `edit_car_details` VARCHAR(220) NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `start_date` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `end_date` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `user_ID` INT(11) NOT NULL,
  `car_ID` INT(11) NOT NULL,
  `customer_ID` INT(11) NOT NULL,
  `booking_ID_management` INT(11) NOT NULL,
  `user_management` VARCHAR(220) NOT NULL,
  `car_management` VARCHAR(220) NOT NULL,
  `setting_ID` INT(11) NOT NULL,
  `admin_ID` INT(11) NOT NULL,
  `register_ID` INT(11) NOT NULL,
  `admin_dashboardcol` VARCHAR(256) NOT NULL,
  `login_ID` INT(11) NOT NULL,
  `validate_identity` VARCHAR(256) NOT NULL,
  PRIMARY KEY (`admin_dashboard_ID`),
  INDEX `admin_dashboard_ID` (`admin_dashboard_ID` ASC) VISIBLE,
  INDEX `fk_admin_dashboard_admin_idx` (`admin_ID` ASC) INVISIBLE,
  INDEX `fk_admin_dashboard_register1_idx` (`register_ID` ASC) VISIBLE,
  INDEX `fk_admin_dashboard_user_dashboard1_idx` (`user_ID` ASC) VISIBLE,
  INDEX `fk_admin_dashboard_login1_idx` (`login_ID` ASC) VISIBLE,
  INDEX `fk_booking_id_idx` (`booking_ID_management` ASC) VISIBLE,
  CONSTRAINT `fk_admin_dashboard_admin`
    FOREIGN KEY (`admin_ID`)
    REFERENCES `new_car_rental_2`.`admin` (`admin_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_admin_dashboard_register1`
    FOREIGN KEY (`register_ID`)
    REFERENCES `new_car_rental_2`.`register` (`register_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_admin_dashboard_user_dashboard1`
    FOREIGN KEY (`user_ID`)
    REFERENCES `new_car_rental_2`.`user_dashboard` (`user_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_admin_dashboard_login1`
    FOREIGN KEY (`login_ID`)
    REFERENCES `new_car_rental_2`.`login` (`login_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_booking_id`
    FOREIGN KEY (`booking_ID_management`)
    REFERENCES `new_car_rental_2`.`booking` (`booking_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `new_car_rental_2`.`booking` (
  `booking_ID` INT(11) NOT NULL,
  `car_ID` INT(11) NOT NULL,
  `user_email` VARCHAR(220) NOT NULL,
  `date_pick_up` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `date_drop_off` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `Third_party_payment` VARCHAR(220) NOT NULL,
  `booking_No` INT(11) NOT NULL,
  PRIMARY KEY (`booking_ID`),
  INDEX `fk_booking_car1_idx` (`car_ID` ASC) VISIBLE,
  CONSTRAINT `fk_booking_admin_dashboard1`
    FOREIGN KEY (`booking_ID`)
    REFERENCES `new_car_rental_2`.`admin_dashboard` (`booking_ID_management`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_booking_car1`
    FOREIGN KEY (`car_ID`)
    REFERENCES `new_car_rental_2`.`car` (`car_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `new_car_rental_2`.`car` (
  `car_ID` INT(11) NOT NULL,
  `car_name` VARCHAR(220) NOT NULL,
  `car_type` VARCHAR(220) NOT NULL,
  `rent` INT(11) NOT NULL,
  `color` VARCHAR(220) NOT NULL,
  `model` VARCHAR(220) NOT NULL,
  `make` VARCHAR(220) NOT NULL,
  `capacity` INT(11) NOT NULL,
  `vehicles-img` VARCHAR(220) NOT NULL,
  `location` VARCHAR(220) NOT NULL,
  `from_date` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `to_date` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `status` VARCHAR(220) NOT NULL,
  `customer_ID` INT(11) NOT NULL,
  `agent_ID` INT(11) NOT NULL,
  INDEX `fk_car_admin1_idx` (`car_ID` ASC) VISIBLE,
  INDEX `fk_car_sales_agent1_idx` (`agent_ID` ASC) VISIBLE,
  INDEX `fk_car_admin_dashboard1_idx` (`customer_ID` ASC) VISIBLE,
  CONSTRAINT `fk_car_admin1`
    FOREIGN KEY (`car_ID`)
    REFERENCES `new_car_rental_2`.`admin` (`car_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_sales_agent1`
    FOREIGN KEY (`agent_ID`)
    REFERENCES `new_car_rental_2`.`sales_agent` (`agent_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_admin_dashboard1`
    FOREIGN KEY (`customer_ID`)
    REFERENCES `new_car_rental_2`.`admin_dashboard` (`customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `new_car_rental_2`.`car_owner` (
  `car_owner_ID` INT(11) NOT NULL,
  `firstname` VARCHAR(220) NOT NULL,
  `lastname` VARCHAR(220) NOT NULL,
  `email` VARCHAR(220) NOT NULL,
  `owner_credentials` VARCHAR(220) NOT NULL,
  `phone_number` VARCHAR(220) NOT NULL,
  `password` VARCHAR(220) NOT NULL,
  `car_ID` INT(11) NOT NULL,
  `user_ID` INT(11) NOT NULL,
  `review_ID` INT(11) NOT NULL,
  `permission_ID` INT(11) NOT NULL,
  `car_ownercol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`car_owner_ID`),
  INDEX `fk_car_owner_permission1_idx` (`permission_ID` ASC) VISIBLE,
  CONSTRAINT `fk_car_owner_login1`
    FOREIGN KEY (`car_owner_ID`)
    REFERENCES `new_car_rental_2`.`login` (`car_owner_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_owner_login2`
    FOREIGN KEY (`car_owner_ID`)
    REFERENCES `new_car_rental_2`.`login` (`car_owner_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_owner_permission1`
    FOREIGN KEY (`permission_ID`)
    REFERENCES `new_car_rental_2`.`permission` (`permission_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `new_car_rental_2`.`car_owner_dashboard` (
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
    REFERENCES `new_car_rental_2`.`car_owner` (`car_owner_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `new_car_rental_2`.`customer` (
  `customer_ID` INT(11) NOT NULL,
  `firstname` VARCHAR(220) NOT NULL,
  `lastname` VARCHAR(220) NOT NULL,
  `email` VARCHAR(220) NOT NULL,
  `car_ID` INT(11) NOT NULL,
  `user_ID` INT(11) NOT NULL,
  `review_ID` INT(11) NOT NULL,
  `password` VARCHAR(220) NOT NULL,
  `register_ID` INT(11) NOT NULL,
  PRIMARY KEY (`customer_ID`),
  INDEX `fk_customer_register1_idx` (`register_ID` ASC) VISIBLE,
  CONSTRAINT `fk_customer_admin_dashboard1`
    FOREIGN KEY (`customer_ID`)
    REFERENCES `new_car_rental_2`.`admin_dashboard` (`customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_customer_register1`
    FOREIGN KEY (`register_ID`)
    REFERENCES `new_car_rental_2`.`register` (`register_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_customer_car1`
    FOREIGN KEY (`customer_ID`)
    REFERENCES `new_car_rental_2`.`car` (`customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `new_car_rental_2`.`login` (
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
    REFERENCES `new_car_rental_2`.`admin` (`admin_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `new_car_rental_2`.`moderators` (
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

CREATE TABLE IF NOT EXISTS `new_car_rental_2`.`permission` (
  `permission_ID` INT(11) NOT NULL,
  `DeleteP` VARCHAR(220) NOT NULL,
  `createP` VARCHAR(220) NOT NULL,
  `updateP` VARCHAR(220) NOT NULL,
  `settings_ID` INT(11) NOT NULL,
  `level_name` VARCHAR(256) NULL DEFAULT NULL,
  PRIMARY KEY (`permission_ID`),
  CONSTRAINT `fk_permission_sales_agent1`
    FOREIGN KEY (`permission_ID`)
    REFERENCES `new_car_rental_2`.`sales_agent` (`permission_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `new_car_rental_2`.`register` (
  `register_ID` INT(11) NOT NULL,
  `firstname` VARCHAR(220) NOT NULL,
  `lastname` VARCHAR(220) NOT NULL,
  `created_at` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `email` VARCHAR(220) NOT NULL,
  `password` VARCHAR(220) NOT NULL,
  `user_ID` INT(11) NOT NULL,
  `admin_dashboard_ID` INT(11) NOT NULL,
  `car_owner_ID` INT(11) NOT NULL,
  PRIMARY KEY (`register_ID`, `car_owner_ID`),
  INDEX `fk_register_car_owner1_idx` (`car_owner_ID` ASC) INVISIBLE,
  INDEX `validation_identity` (`admin_dashboard_ID` ASC) VISIBLE,
  INDEX `fk_register_login1_idx` (`user_ID` ASC) VISIBLE,
  CONSTRAINT `fk_register_car_owner1`
    FOREIGN KEY (`car_owner_ID`)
    REFERENCES `new_car_rental_2`.`car_owner` (`car_owner_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_register_login1`
    FOREIGN KEY (`user_ID`)
    REFERENCES `new_car_rental_2`.`login` (`user_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_register_admin_dashboard1`
    FOREIGN KEY (`user_ID`)
    REFERENCES `new_car_rental_2`.`admin_dashboard` (`user_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_register_admin_dashboard2`
    FOREIGN KEY (`admin_dashboard_ID`)
    REFERENCES `new_car_rental_2`.`admin_dashboard` (`admin_dashboard_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `new_car_rental_2`.`reviews` (
  `reviewID` INT(11) NOT NULL,
  `customerID` INT(11) NOT NULL,
  `comments` VARCHAR(220) NOT NULL,
  PRIMARY KEY (`reviewID`),
  INDEX `fk_reviews_customer1_idx` (`customerID` ASC) VISIBLE,
  CONSTRAINT `fk_reviews_moderators1`
    FOREIGN KEY (`reviewID`)
    REFERENCES `new_car_rental_2`.`moderators` (`review_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_reviews_customer1`
    FOREIGN KEY (`customerID`)
    REFERENCES `new_car_rental_2`.`customer` (`customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `new_car_rental_2`.`search_car` (
  `search_ID` INT(11) NOT NULL,
  `search_make` VARCHAR(220) NOT NULL,
  `search_color` VARCHAR(220) NOT NULL,
  `search_capacity` VARCHAR(220) NOT NULL,
  `search_brands` VARCHAR(220) NOT NULL,
  `search_model` VARCHAR(220) NOT NULL,
  `pick_location` VARCHAR(220) NOT NULL,
  `drop_location` VARCHAR(220) NOT NULL,
  `user_ID` INT(11) NOT NULL,
  `car_ID` INT(11) NOT NULL,
  PRIMARY KEY (`search_ID`),
  INDEX `fk_search_car_car1_idx` (`car_ID` ASC) VISIBLE,
  CONSTRAINT `fk_search_car_car1`
    FOREIGN KEY (`car_ID`)
    REFERENCES `new_car_rental_2`.`car` (`car_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `new_car_rental_2`.`settings` (
  `settings_ID` INT(11) NOT NULL,
  `profile` VARCHAR(220) NOT NULL,
  `bookings` VARCHAR(220) NOT NULL,
  `customer_owner_ID` INT(11) NOT NULL,
  `admin_ID` INT(11) NOT NULL,
  `level_of_permission` VARCHAR(220) NOT NULL,
  PRIMARY KEY (`settings_ID`),
  CONSTRAINT `fk_settings_admin_dashboard1`
    FOREIGN KEY (`settings_ID`)
    REFERENCES `new_car_rental_2`.`admin_dashboard` (`setting_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `new_car_rental_2`.`users` (
  `id_user` INT(11) NOT NULL,
  `username` VARCHAR(256) NOT NULL,
  `password` VARCHAR(256) NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `validation_identitty` VARCHAR(45) NOT NULL,
  `level_permission` INT(11) NOT NULL,
  PRIMARY KEY (`id_user`),
  INDEX `fk_users_register1_idx` (`validation_identitty` ASC) VISIBLE,
  INDEX `fk_users_permission1_idx` (`level_permission` ASC) VISIBLE,
  CONSTRAINT `fk_users_register1`
    FOREIGN KEY (`validation_identitty`)
    REFERENCES `new_car_rental_2`.`register` (`admin_dashboard_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_admin_dashboard1`
    FOREIGN KEY (`id_user`)
    REFERENCES `new_car_rental_2`.`admin_dashboard` (`user_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_login1`
    FOREIGN KEY (`id_user`)
    REFERENCES `new_car_rental_2`.`login` (`user_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_permission1`
    FOREIGN KEY (`level_permission`)
    REFERENCES `new_car_rental_2`.`permission` (`permission_ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `new_car_rental_2`.`user_dashboard` (
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

CREATE TABLE IF NOT EXISTS `new_car_rental_2`.`table1` (
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
