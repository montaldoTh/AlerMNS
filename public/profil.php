<?php

if(isset($_GET['id'])){

    require '../app/manager/User-Manager.php';
    $managerU = new UserManager;
    $user = $managerU->select($_GET['id']);

    require '../app/manager/MessageManager.php';
    $managerM = new MessageManager;
}

$task = "read";

if(array_key_exists('task', $_GET)){
    $task = $_GET['task'];
}

if($task == "write"){
    
} else {
    $messages = $managerM->selectAll();
    var_dump($messages);
    // get();
}

var_dump($task);

require '../template/tpt-profil-page.php';