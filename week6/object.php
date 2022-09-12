<?php


class artist{

   public $firstname = "dali";
   public $lastname;
   public $birthdate;
   public $birthcity;
   public $country;
   public static $age;

   function __construct($firstname,$lastname){
    $this->firstname=$firstname;
    $this->lastname=$lastname;
    self::$age=41;
   }


    function greeting(){
        echo "hello $this->firstname  $this->lastname";
    } 

    

}

class futureArt extends artist{
    public function sayHi(){
        echo "hello future";
    }
}



$picasso = new artist("pablo","picasso");
$dali = new artist('salvador','dali');
//$picasso->firstname="pablo";
echo $picasso->firstname;
echo "<br>";

echo $dali->firstname;
echo "<br>";
echo $picasso->greeting();
echo "<br>";
echo artist::$age;

?>