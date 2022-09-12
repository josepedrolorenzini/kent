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
    include('connection.php');
    ?>

  
   <?php 
   //  insert , display]
   
   $title = $_POST['title'];
   $author = $_POST['author'];
   $disc = $_POST['disc'];
   //echo($title);
   //INSERT INTO `books` (`id`, `title`, `author`, `disc`) VALUES (NULL, 'hhhhh', 'hhhhh', 'jhkjhkhkjhkjhj'), (NULL, '', '', '');
   
   $sql = " INSERT INTO books (`id`, `title`, `author`, `disc`) VALUES (NULL, '$title', '$author', '$disc') ";
   
   if(mysqli_query($conn,$sql)){
       echo"you have added a new record ";
   }else{
       echo "something wrong";
   }
   
   
   
   ?>
</body>
</html>