         
         Executing SQL script in server
ERROR: Error 1064: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '
  INDEX `fk_admin_ID_idx` (`admin_ID` ASC) VISIBLE,
  CONSTRAINT `fk_admin_I...' at line 21
SQL Code: 
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
          `booking_ID` INT(11) NOT NULL,
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
          INDEX `fk_admin_ID_idx` (`admin_ID` ASC) VISIBLE,
          CONSTRAINT `fk_admin_ID`
            FOREIGN KEY (`admin_ID`)
            REFERENCES `new_car_rental_2`.`admin` (`admin_ID`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION)
        ENGINE = InnoDB
        DEFAULT CHARACTER SET = utf8mb4

SQL script execution finished: statements: 3 succeeded, 1 failed

Fetching back view definitions in final form.
Nothing to fetch





Executing SQL script in server
ERROR: Error 1064: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'INVISIBLE,
  INDEX `fk_admin_ID_idx` (`admin_ID` ASC) INVISIBLE,
  CONSTRAINT...' at line 21
SQL Code:
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
          `booking_ID` INT(11) NOT NULL,
          `user_management` VARCHAR(220) NOT NULL,
          `car_management` VARCHAR(220) NOT NULL,
          `setting_ID` INT(11) NOT NULL,
          `admin_ID` INT(11) NOT NULL,
          `register_ID` INT(11) NOT NULL,
          `admin_dashboardcol` VARCHAR(256) NOT NULL,
          `login_ID` INT(11) NOT NULL,
          `validate_identity` VARCHAR(256) NOT NULL,
          PRIMARY KEY (`admin_dashboard_ID`),
          INDEX `admin_dashboard_ID` (`admin_dashboard_ID` ASC) INVISIBLE,
          INDEX `fk_admin_ID_idx` (`admin_ID` ASC) INVISIBLE,
          CONSTRAINT `fk_admin_ID`
            FOREIGN KEY (`admin_ID`)
            REFERENCES `new_car_rental_2`.`admin` (`admin_ID`)
            ON DELETE CASCADE
            ON UPDATE CASCADE)
        ENGINE = InnoDB
        DEFAULT CHARACTER SET = utf8mb4

SQL script execution finished: statements: 3 succeeded, 1 failed

Fetching back view definitions in final form.
Nothing to fetch





Executing SQL script in server
ERROR: Error 1064: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '
  CONSTRAINT `fk_login_admin1`
    FOREIGN KEY (`admin_ID`)
    REFERENCES `...' at line 14
SQL Code:
        -- -----------------------------------------------------
        -- Table `new_car_rental_2`.`login`
        -- -----------------------------------------------------
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
        DEFAULT CHARACTER SET = utf8mb4

SQL script execution finished: statements: 9 succeeded, 1 failed

Fetching back view definitions in final form.
Nothing to fetch
