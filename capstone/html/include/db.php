<?php

// $db_host = 'localhost';
// $db_user = "root";
// $db_password = "";
// $db_database="car_rental";

//create array with the connector parameters
$db['db_host'] = "localhost";
$db['db_user'] = "root";
$db["db_pass"] = "";
$db["db_name"] = "car_rental";

foreach ($db as $key => $value) {
   define(strtoupper($key) , $value);
}

// $connection = mysqli_connect("localhost","root","","car_rental");
$connection = mysqli_connect(DB_HOST,DB_USER,DB_PASS,DB_NAME);
if($connection){
    echo "we are connected";
}


?>