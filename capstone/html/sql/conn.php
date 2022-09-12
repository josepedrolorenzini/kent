<?php

$db_server = 'localhost';
$db_name = 'car_rental';
$db_user = 'root';
$db_password = '';

$conn = mysqli_connect($db_server,$db_user,$db_password,$db_name);

if($conn === false){
    die("ERROR: Could not connect. " . mysqli_connect_error()); 
}else{
    echo "<p style='color:red'>Database Succesfull connected </p><br> ";
}

// try {
//     $pdo = new PDO("mysql:host=". $db_server . ";dbname=" . $db_name ,$db_user,$db_password);
//     ///set PDO error mode to exception
//     $pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
//     echo "<p style='color:red'>Database Succesfull connected </p><br> ";
// } catch (PDOException $e) {
//     //throw $e;
//     die("Error: Could not connect. " . $e->getMessage());
// }







?>