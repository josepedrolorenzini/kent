<html>
<head>
<title>Exercise 4-1</title>
</head>
<body>
<h1>Regular HTML section (outside  tags)</h1>
<p>You can type regular HTML here and it will show up</p>


<?php $name = 'jose'; ?>



<h1>PHP section (inside  tags)</h1>
This was output using PHP<br>
<?php echo "This page was generated: " . date("M dS, Y"); ?>



<?php 
     
     echo "<br>";

  //   $d = date("M dS, Y");  
  //   echo "This page was generated: " . $d . "<hr/>";

  $date = date("M dS, Y");  
  echo "This page was generated: " . $date . "<hr/>";

  $formatDate = date('l , d-M-y H:i:s T');
  echo "<br>";
  echo $formatDate;

    echo "<br>";
    $remaining = 365 - date("z") + 1;
    echo "<b>There are ". $remaining . " days left in the year</b>";
  
  ?>

</body>
</html>