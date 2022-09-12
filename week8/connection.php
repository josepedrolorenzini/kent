<?php

$servername = "localhost";
$username = "root";
$password ="";
$dbname = "school";

$conn = mysqli_connect($servername,$username,$password,$dbname);
if($conn){
    echo "connection succesuful";
}else{
    die("not connected") . mysqli_connect_error();
}

echo "<br><b>hello world</b>";

?>