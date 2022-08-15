<?php

function isleapear($date=null){
    $ts =time();
    if(!is_null($date)){
        $date = $date . '01-01';
    }
    $ts = strtotime("$date");




    if(date("L",$ts)==1){
        return true;
    }


    return false;
}






?>