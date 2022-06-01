<?php 

require_once('../API/api.php');

try{
    if(!empty($_GET['task'])) {
        if($_GET['task'] == "write"){
            postMessage();
        }
    }else{
        getMessage();
    }
}catch(Exception $e){
    $erreur = [
        "message" => $e->getMessage()
    ];
    echo $erreur;
}