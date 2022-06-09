<?php 

require_once('../API/api.php');

try{
    if(!empty($_GET['task'])) {
        if($_GET['task'] == "write"){
            postMessage();
        }
    }else if(isset($_GET['logged']) && isset($_GET['contact'])){
        //Liste des utilisateur avec barre recherche si pas trop chiant
        getPrivateMsg();
    }else{
        getMessage();
    }
}catch(Exception $e){
    $erreur = [
        "message" => $e->getMessage()
    ];
    echo $erreur;
}