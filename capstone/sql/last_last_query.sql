
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_ID` INT(11) ,
  `username` VARCHAR(256) ,
  `password` VARCHAR(256) ,
  `created_at` DATE  DEFAULT CURRENT_TIMESTAMP(),
  `car_ID` INT(11) ,
  `booking_ID` INT(11) ,
  `permission_ID` INT(11) ,
  `user_id` VARCHAR(220) ,
  PRIMARY KEY (`admin_ID`))



-- -----------------------------------------------------
-- Table `customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_ID` INT(11) ,
  `firstname` VARCHAR(220) ,
  `lastname` VARCHAR(220) ,
  `email` VARCHAR(220) ,
  `car_ID` INT(11) ,
  `user_ID` INT(11) ,
  `review_ID` INT(11) ,
  `password` VARCHAR(220) ,
  `register_ID` INT(11) ,
  PRIMARY KEY (`customer_ID`))



-- -----------------------------------------------------
-- Table `car_owner`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_owner` (
  `car_owner_ID` INT(11) ,
  `firstname` VARCHAR(220) ,
  `lastname` VARCHAR(220) ,
  `email` VARCHAR(220) ,
  `owner_credentials` VARCHAR(220) ,
  `phone_number` VARCHAR(220) ,
  `password` VARCHAR(220) ,
  `car_ID` INT(11) ,
  `review_ID` INT(11) ,
  `permission_ID` INT(11) ,
  PRIMARY KEY (`car_owner_ID`))



-- -----------------------------------------------------
-- Table `moderators`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `moderators` (
  `moderator_ID` INT(11) ,
  `firstname` VARCHAR(220) ,
  `lastname` VARCHAR(220) ,
  `email` VARCHAR(220) ,
  `permission_ID` INT(11) ,
  `user_ID` INT(11) ,
  `review_ID` INT(11) ,
  `manage_comments` VARCHAR(220) ,
  PRIMARY KEY (`moderator_ID`))



-- -----------------------------------------------------
-- Table `sales_agent`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sales_agent` (
  `agent_ID` INT(11) ,
  `permission_ID` INT(11) ,
  `email` VARCHAR(220) ,
  PRIMARY KEY (`agent_ID`))



-- -----------------------------------------------------
-- Table `user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `user` (
  `user_ID` INT(11) ,
  `username` VARCHAR(256) ,
  `password` VARCHAR(256) ,
  `created_at` DATETIME  DEFAULT CURRENT_TIMESTAMP(),
  `permission_ID` INT(11) ,
  `customer_ID` INT(11) ,
  `car_owner_ID` INT(11) ,
  `admin_ID` INT(11) ,
  `moderator_ID` INT(11) ,
  `agent_ID` INT(11) ,
  PRIMARY KEY (`user_ID`),
    FOREIGN KEY (`customer_ID`)
    REFERENCES `customer` (`customer_ID`),
    FOREIGN KEY (`car_owner_ID`)
    REFERENCES `car_owner` (`car_owner_ID`)
   ,
    FOREIGN KEY (`admin_ID`)
    REFERENCES `admin` (`admin_ID`),
    FOREIGN KEY (`moderator_ID`)
    REFERENCES `moderators` (`moderator_ID`),
    FOREIGN KEY (`agent_ID`)
    REFERENCES `sales_agent` (`agent_ID`)
    );



-- -----------------------------------------------------
-- Table `login`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `login` (
  `login_ID` INT(11) ,
  `password` VARCHAR(220) ,
  `user_ID` INT(11) ,
  `username` VARCHAR(220) ,
  PRIMARY KEY (`login_ID`),
    FOREIGN KEY (`user_ID`)
    REFERENCES `user` (`user_ID`)
    );



-- -----------------------------------------------------
-- Table `permission`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `permission` (
  `DeleteP` VARCHAR(220) ,
  `createP` VARCHAR(220) ,
  `updateP` VARCHAR(220) ,
  `permission_ID` INT(11) not null ,
  `name_permission` VARCHAR(256) ,
  PRIMARY KEY (`permission_ID`));



-- -----------------------------------------------------
-- Table `car`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car` (
  `car_ID` INT(11) ,
  `car_name` VARCHAR(220) ,
  `car_type` VARCHAR(220) ,
  `rent` INT(11) ,
  `color` VARCHAR(220) ,
  `model` VARCHAR(220) ,
  `make` VARCHAR(220) ,
  `capacity` INT(11) ,
  `vehicles-img` VARCHAR(220) ,
  `location` VARCHAR(220) ,
  `from_date` DATE  DEFAULT CURRENT_TIMESTAMP(),
  `to_date` DATE  DEFAULT CURRENT_TIMESTAMP(),
  `status` VARCHAR(220) ,
  `customer_ID` INT(11) ,
  `agent_ID` INT(11) ,
  `user_ID` INT(11) ,
  PRIMARY KEY (`car_ID`));



-- -----------------------------------------------------
-- Table `moderator_dashboard`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `moderator_dashboard` (
  `moderator_dashboard_ID` INT(11) ,
  `add_car` VARCHAR(220) ,
  `remove_car` VARCHAR(220) ,
  `edit_car_details` VARCHAR(220)  DEFAULT CURRENT_TIMESTAMP(),
  `start_date` DATE  DEFAULT CURRENT_TIMESTAMP(),
  `end_date` DATE  DEFAULT CURRENT_TIMESTAMP(),
  `user_ID` INT(11) ,
  `car_ID` INT(11) ,
  `customer_ID` INT(11) ,
  `booking_ID` INT(11) ,
  `user_management` VARCHAR(220) ,
  `car_management` VARCHAR(220) ,
  `setting_ID` INT(11) ,
  `admin_ID` INT(11) ,
  `register_ID` INT(11) ,
  `admin_dashboardcol` VARCHAR(256) ,
  `login_ID` INT(11) ,
  `validate_identity` VARCHAR(256) ,
  `permission_ID` INT(11) ,
  PRIMARY KEY (`moderator_dashboard_ID`),
  INDEX `fk_login_ID_idx` (`login_ID`),
  INDEX `fk_permission_ID_idx` (`permission_ID`),
  INDEX `fk_car_ID_idx` (`car_ID`),
  CONSTRAINT `fk_login_ID`
    FOREIGN KEY (`login_ID`)
    REFERENCES `login` (`login_ID`)
    ,
  CONSTRAINT `fk_permission_ID`
    FOREIGN KEY (`permission_ID`)
    REFERENCES `permission` (`permission_ID`)
    ,
  CONSTRAINT `fk_car_ID`
    FOREIGN KEY (`car_ID`)
    REFERENCES `car` (`car_ID`)
    );



-- -----------------------------------------------------
-- Table `booking`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `booking` (
  `booking_ID` INT not null ,
  `car_ID` INT(11) ,
  `user_email` VARCHAR(220) ,
  `date_pick_up` DATE  DEFAULT CURRENT_TIMESTAMP(),
  `date_drop_off` DATE  DEFAULT CURRENT_TIMESTAMP(),
  `Third_party_payment` VARCHAR(220) ,
  `booking_No` INT(11) ,
  PRIMARY KEY (`booking_ID`),
    FOREIGN KEY (`car_ID`)
    REFERENCES `car` (`car_ID`)
    );



-- -----------------------------------------------------
-- Table `reviews`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `reviews` (
  `reviewID` INT(11) ,
  `comments` VARCHAR(220) ,
  `agent_ID` INT(11) ,
  PRIMARY KEY (`reviewID`),
    FOREIGN KEY (`agent_ID`)
    REFERENCES `sales_agent` (`agent_ID`)
    );



-- -----------------------------------------------------
-- Table `car_owner_dashboard`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_owner_dashboard` (
  `car_owner_dashboard_ID` INT(11) not null,
  `add_car` VARCHAR(220) ,
  `remove_car` VARCHAR(220) ,
  `edit_car_details` VARCHAR(220) ,
  `booking_ID` INT(11) ,
  `user_ID` INT(11) ,
  `car_ID` INT(11) ,
  `customer_ID` INT(11) ,
  `permission_ID` INT(11) ,
  `setting_ID` INT(11) ,
  `login_ID` INT(11) ,
  `review_ID` INT(11) ,
  PRIMARY KEY (`car_owner_dashboard_ID`),

    FOREIGN KEY (`login_ID`)
    REFERENCES `login` (`login_ID`)
    ,
    FOREIGN KEY (`permission_ID`)
    REFERENCES `permission` (`permission_ID`)
    ,
    FOREIGN KEY (`booking_ID`)
    REFERENCES `booking` (`booking_ID`)
    ,
    FOREIGN KEY (`car_ID`)
    REFERENCES `car` (`car_ID`)
    ,
    FOREIGN KEY (`review_ID`)
    REFERENCES `reviews` (`reviewID`)
    );



-- -----------------------------------------------------
-- Table `register`
-- -----------------------------------------------------
CREATE TABLE  register (
  `register_ID` INT(11) not null ,
  `firstname` VARCHAR(220) ,
  `lastname` VARCHAR(220) ,
  `created_at` DATE  DEFAULT CURRENT_TIMESTAMP(),
  `email` VARCHAR(220) ,
  `password` VARCHAR(220) ,
  `user_ID` INT(11) ,
  `login_id` INT(11) ,
  PRIMARY KEY (`register_ID`),
    FOREIGN KEY (`user_ID`)
    REFERENCES `user` (`user_ID`)
    );



-- -----------------------------------------------------
-- Table `search_car`
-- -----------------------------------------------------
CREATE TABLE  `search_car` (
  `search_ID` INT(11) not null,
  `search_make` VARCHAR(220) ,
  `search_color` VARCHAR(220) ,
  `search_capacity` VARCHAR(220) ,
  `search_brands` VARCHAR(220) ,
  `search_model` VARCHAR(220) ,
  `pick_location` VARCHAR(220) ,
  `drop_location` VARCHAR(220) ,
  `user_ID` INT(11) ,
  `car_ID` INT(11) ,
  PRIMARY KEY (`search_ID`),
    FOREIGN KEY (`car_ID`)
    REFERENCES `car` (`car_ID`)
    );



-- -----------------------------------------------------
-- Table `settings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `settings` (
  `settings_ID` INT(11) ,
  `profile` VARCHAR(220) ,
  `bookings` VARCHAR(220) ,
  `manage_user` INT(11) ,
  `admin_ID` INT(11) ,
  `permission_ID` INT(11) ,
  PRIMARY KEY (`settings_ID`),
    FOREIGN KEY (`permission_ID`)
    REFERENCES `permission` (`permission_ID`)
    );



-- -----------------------------------------------------
-- Table `customer_dashboard`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `customer_dashboard` (
  `my_booking` VARCHAR(220) ,
  `firstname` VARCHAR(220) ,
  `lastname` VARCHAR(220) ,
  `email` VARCHAR(220) ,
  `total_days` VARCHAR(220) ,
  `car_ID` INT(11) ,
  `start_date` DATE  DEFAULT CURRENT_TIMESTAMP(),
  `end_date` DATE  DEFAULT CURRENT_TIMESTAMP(),
  `user_ID` INT(11) ,
  `customer_dashboard_id` INT ,
  `loging_ID` INT(11) ,
  `permission_ID` INT(11) ,
  PRIMARY KEY (`customer_dashboard_id`),

    FOREIGN KEY (`loging_ID`)
    REFERENCES `login` (`login_ID`)
    ,
 
    FOREIGN KEY (`permission_ID`)
    REFERENCES `permission` (`permission_ID`)
    ,

    FOREIGN KEY (`car_ID`)
    REFERENCES `car` (`car_ID`)
    );



-- -----------------------------------------------------
-- Table `categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `categories` (
  `categories_ID` INT ,
  PRIMARY KEY (`categories_ID`));



-- -----------------------------------------------------
-- Table `admin_dashboard_copy1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `admin_dashboard_copy1` (
  `admin_dashboard_ID` INT(11) ,
  `add_car` VARCHAR(220) ,
  `remove_car` VARCHAR(220) ,
  `edit_car_details` VARCHAR(220)  DEFAULT CURRENT_TIMESTAMP(),
  `start_date` DATE  DEFAULT CURRENT_TIMESTAMP(),
  `end_date` DATE  DEFAULT CURRENT_TIMESTAMP(),
  `user_ID` INT(11) ,
  `car_ID` INT(11) ,
  `customer_ID` INT(11) ,
  `booking_ID` INT(11) ,
  `user_management` VARCHAR(220) ,
  `car_management` VARCHAR(220) ,
  `setting_ID` INT(11) ,
  `admin_ID` INT(11) ,
  `register_ID` INT(11) ,
  `login_ID` INT(11) ,
  `validate_identity` VARCHAR(256) ,
  `permission_ID` INT(11) ,
  PRIMARY KEY (`admin_dashboard_ID`),


    FOREIGN KEY (`login_ID`)
    REFERENCES `login` (`login_ID`)
    ,

    FOREIGN KEY (`permission_ID`)
    REFERENCES `permission` (`permission_ID`)
    ,

    FOREIGN KEY (`car_ID`)
    REFERENCES `car` (`car_ID`)
    )




