<?php

if(isset($_GET['id'])){

    require '../app/manager/User-Manager.php';
    $managerU = new UserManager;
    $user = $managerU->select($_GET['id']);

    require '../app/manager/MessageManager.php';
    $managerM = new MessageManager;
}

$task = "read";

if(isset($_GET['task'])){
    $task = $_GET['task'];
}

if($task == "write"){
    
} else {
    $messages = $managerM->selectMsgNSndr();
}   

require '../template/tpt-profil-page.php';