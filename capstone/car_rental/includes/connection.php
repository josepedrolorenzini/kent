<?php
define("DB_SERVER" , "localhost");
define("DB_USERNAME" , "root");
define("DB_PASSWORD" , "");
define("DB_NAME" , "car_rental");

$connection = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_NAME);
if($connection){
    echo "connection is succesfull";
}


?>

