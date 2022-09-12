<?php
function educationPage(){
    $education = [
        ["institution_name"=>"inacap",
         "education"=> "Graphic desing and Multimedia",
         "year" => "2004-2009"  ],
         ["institution_name"=>"universidad del pacifico",
         "education"=> "desarrollo web",
         "year" => "2011-2012"  ],
         ["institution_name"=>"kent institute",
         "education"=> "Web develop and multimedia",
         "year" => "2019-2020"  ],
    ];
    echo "<pre>";
    // var_dump($education[2]["institution_name"]);
    //var_dump($education);
    
    $count=1;
    foreach ($education as $educacion) {
        echo $count++;
        echo "<div style='background-color:#e6e6e6;'>";
        foreach ($educacion as $key => $value) {
           echo $key.  " => " . $value . "<br>";
        }
        echo "</div>";
    }
    echo "</pre>";
}

if(true){
    echo  $_SERVER['PHP_SELF'];

}
function experiencePage(){
    $experience = [
        [ "role"=>"web designer",
         "organization" => "banco santander - Spain",
         "year"=>2012, 
         "position"=>"Front end desing with css , html and javascript"],
         [ "role"=>"web designer",
         "organization" => "Retina HD - Santiago de Chile",
         "year"=>2012-2013, 
         "position"=>"Front end desing with css , html and javascript"],
         [ "role"=>"Graphic designer",
         "organization" => "Abacus - Auckland , New Zealand",
         "year"=>2014, 
         "position"=>"Prepare layouts to the printing room"],
         [ "role"=>"Freelance Web designer",
         "organization" => "www.vientodelsur.cl - worldwide",
         "year"=>2015-2019, 
         "position"=>"Graphic desing , web desing , digital marketing"],
         [ "role"=>"Web developer - IT",
         "organization" => "Marble ceramic corp - Australia",
         "year"=>2015-2019, 
         "position"=>"Graphic desing , web desing , digital marketing"],
     ];
     echo "<br>";
     echo count($experience);
     $x=1;
     foreach ($experience as $experiencia) {
         echo "<br>";
         echo "<h1 style='color:red;'>Experience " . $x++ . " </h1>";
         echo "<div style='background-color:#e6e6e6;'>";
         foreach ($experiencia as $key => $value) {
            echo $key . "=>" . $value . "<br>";
         }
         echo "</div>";
     }
}


// echo "<br><pre>";
// echo var_dump($experience);
// echo "</pre><br>";
// var_dump(empty($experience));



?>