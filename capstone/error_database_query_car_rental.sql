Executing SQL script in server
ERROR: Error 1064: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4' at line 21
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
          INDEX `admin_dashboard_ID` (`admin_dashboard_ID` ASC) VISIBLE)
        ENGINE = InnoDB
        DEFAULT CHARACTER SET = utf8mb4

SQL script execution finished: statements: 3 succeeded, 1 failed

Fetching back view definitions in final form.
Nothing to fetch
