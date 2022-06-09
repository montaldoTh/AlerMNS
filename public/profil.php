<?php

if(isset($_GET['logged'])){

    require '../app/manager/User-Manager.php';
    $managerU = new UserManager;
    $loggedUser = $managerU->select($_GET['logged']);


    // require '../app/manager/MessageManager.php';
    // $managerM = new MessageManager;
    // $messages = $managerM->selectMsgNSndr();

}

require '../template/tpt-profil-page.php';