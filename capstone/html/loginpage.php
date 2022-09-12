<?php include "sql/conn.php"; ?>
<?php session_start(); ?>
<?php

if(isset($_POST['login'])){

   $username =  $_POST['username'];
   $password =   $_POST['password'];

   $username = mysqli_real_escape_string($conn,$username);
   $password = mysqli_real_escape_string($conn,$password);

   $query = "SELECT * FROM users WHERE username = '{$username}' ";
   $select_user_query = mysqli_query($conn,$query);

   if(!$select_user_query){
    die("query FAILED" . mysqli_error($conn));
   }else{
    echo "QUERY works <br>";
   }

   while($row = mysqli_fetch_array($select_user_query)){
         $db_id = $row['id_user'];
         $db_username = $row['username'];
         $db_password = $row['password'];

         echo $db_username . "<br> " . $db_password ;


   }

   if($username !== $db_username && $password !== $db_password){
    header("Location: login_form.php");
   }else if($username == $db_username && $password == $db_password){

    $_SESSION['username'] = $db_username ;
    $_SESSION['password'] = $db_email ;
    $_SESSION['id_user'] = $db_role ;

    header("Location: dashboard.php");
   }else{
    header("Location: login_form.php");
   }


}