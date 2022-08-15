<html>
<head>
<title>Exercise 4-2</title>
</head>
<body>
<h1>Simple Calendar using Loops</h1>

<table border=1>
<tr><?php echo "<th colspan='7'>".date('F')."</th>"; ?></tr>
<tr>
  <th>Sun</th><th>Mon</th><th>Tue</th><th>Wed</th><th>Thu</th><th>Fri</th><th>Sat</th>
</tr>
<?php

// $day =0;
// $dayCount=0;
// while($day<=31){
//   if($day%7==0){
//     echo "<tr></tr>";
//   }
//   echo "<td>". ($day+1) . "</td>";
//   $day++;
//   $dayCount++;
// }

$day = 0;
$started=false;
$dayCount=0;
$dayOne = date("w",mktime(0,0,0,date('n'),1, date("Y")));
$daysinMonth = date("t");
while ($day<=$daysinMonth-1) {
 //when we need a new row go ahead.
 if ($day%7==0) {
 echo "<tr></tr>";
 }
 if(!$started){
 if($dayCount==$dayOne){
 $started=true;
 echo "<td>".($day+1)."</td>";
 }
 else {
 echo "<td><span>&nbsp;</span></td>";
 $dayCount++;
 continue;
 }
 }
 else {
 echo "<td>".($day+1)."</td>";
 }
 $day++;
 $dayCount++;
}


?>
</table>

<b>
  
<?php 


////made by student id k-190364 - jose lorenzini
echo strtoupper("jose lorenzini solution");
$Days2 = 0;
$dayCounts2 = 0;
$daysinMonth2 = date("t"); 

echo "<br>";
echo $daysinMonth2;
echo "<br>";
var_dump(date("D M j G:i:s T Y"));
echo "<br>";
echo date("D M j G:i:s T Y");
echo "<br>";
echo strtoupper("jose lorenzini solution");
?>
<table border="1">
  <tr><?php echo "<th colspan='7'>".date('F')."</th>"; ?></tr>
<tr>
  <br>
  <?php
 $dayss = ['Mon', 'Tue' , 'Wed' , 'Thu', 'Fri' , 'Sat','Sun']; 
 foreach($dayss as $mes){
      echo "<th>" . $mes . "</th>"; 
 }
 ?>
<!-- <th>Sun</th><th>Mon</th><th>Tue</th><th>Wed</th><th>Thu</th><th>Fri</th><th>Sat</th>
</tr> -->
  <?php
echo "<br>";
while ($Days2<=$daysinMonth2-1) {
 if($Days2%7==0){
  echo "<tr></tr>";
 }
 echo "<td>" . ($Days2+1) . "</td>";
 $Days2++;
 $dayCounts2++;
}

$currentMont = date("Y");
?>
</table>
</b>

</body>
</html>
