<?php


$ab = 0;

$xy = 1;

$count = 0;

echo "<table>";

// while  ($count < 5) {

//      echo "<tr>";

//      $count++;

//      echo "<td>" . $ab . "</td><td>" . $xy . "</td>";

//      $ab += $xy;

//      $xy += $ab;

//      echo "</tr>";

// }




for ($i=0; $i < 5; $i++) { 
    echo "<tr>";

     //$count++;

     echo "<td>" . $ab . "</td><td>" . $xy . "</td>";

     $ab += $xy;

     $xy += $ab;

     echo "</tr>";

}

echo "</table>";


echo "<br>";

$countries = array("Canada", "France", "Germany" );
echo "country=" . $countries[1];
?>

 <h1>Down the Rabbit-Hole</h1>
<div class="bb" >    
   <p class="bb" >Alice was beginning to get very tired ...</p>
   <br/>
   <p> Alice </p>
 </div>
 <div id="aa">
    <p>Down, down, down. Would the fall never come to an end</p>
   <div> <p class="bb" >I wonder if I shall fall right …</p> </div>
</div>