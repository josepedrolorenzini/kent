<html>
<head>
<title>Exercise 4-3</title>
</head>
<body>
<h1>Making and using functions</h1>


<table border=1>
<tr>
  <th>milliliters</th><th>Cups</th><th>Ounces</th>
<!-- <tr><td>50</td><td>???</td><td>???</td></tr><tr><td>100</td><td>???</td><td>???</td></tr><tr><td>150</td><td>???</td><td>???</td></tr><tr><td>200</td><td>???</td><td>???</td></tr><tr><td>250</td><td>???</td><td>???</td></tr><tr><td>300</td><td>???</td><td>???</td></tr><tr><td>350</td><td>???</td><td>???</td></tr><tr><td>400</td><td>???</td><td>???</td></tr><tr><td>450</td><td>???</td><td>???</td></tr><tr><td>500</td><td>???</td><td>???</td></tr><tr><td>550</td><td>???</td><td>???</td></tr><tr><td>600</td><td>???</td><td>???</td></tr><tr><td>650</td><td>???</td><td>???</td></tr><tr><td>700</td><td>???</td><td>???</td></tr><tr><td>750</td><td>???</td><td>???</td></tr><tr><td>800</td><td>???</td><td>???</td></tr><tr><td>850</td><td>???</td><td>???</td></tr><tr><td>900</td><td>???</td><td>???</td></tr><tr><td>950</td><td>???</td><td>???</td></tr><tr><td>1000</td><td>???</td><td>???</td></tr></tr> -->
<?php

function convertUnits($startVal, $startUnits, $endUnits) {
  $Cups = "Cups";
  $Ounces = 'Ounces';
  if($Cups && $Ounces){
    for ($i=$startVal; $i <=1000 ; $i+=$startVal) { 

        $mlToOz = $i * 0.033814;
        $mlToCup = $i * 0.00422675;
        
      while($i<=1000){
        echo "<tr><td>$i</td><td>" . /*abs($mlToCup)*/ sprintf('%.2f', $mlToCup) ." </td><td>" . /*abs($mlToOz)*/ sprintf('%.2f', $mlToOz) . "</td></tr><tr>";
        break;
      }
      $mlToCup++;
      $mlToOz++;
      
     
    }
  }
  
  
  //echo  "???";
 }

 convertUnits(50 , 0.21 , 1.6);
 
?>

</table>


</body>
</html>