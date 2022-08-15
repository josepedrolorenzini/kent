<?php

if(isset($_POST['login'])){

    $username = $_POST['username'] ;
    $password = $_POST['password'];
    
    echo $username . "<br>";
    echo $password ;
    
    if($username == 'moh' && $password ){
        echo $username;
    } else{
        echo "dont threat on me";
    }
}


?>