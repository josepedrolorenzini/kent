<?php

echo "hello world";

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php 
    $name = "jose";
    echo ("check $name");
    echo ("<h1>$name</h1>");
    echo date("F j, Y, g:i a");
    echo date("H:i:s");

    define("DATABASE_LOCAL","localhost");
    define("databasename","localhost");
    define("root","root");
    define("user","");

    echo "<br>";
    echo (DATABASE_LOCAL);

    $age=35;
    $site = "https://www.google.com";


    while ($a <= 10) {
        echo $a;
        $a++;
    }
    echo "<br>";
    function testUser(){
        echo "fuckkkkkk";
    }
    testUser();
    ?>
    <br>
    <a href="<?php echo($site) ;  ?>">click</a>
</body>
</html>