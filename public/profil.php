<?php

if(isset($_GET['id'])){

    require '../app/manager/User-Manager.php';
    $manager = new UserManager;
    $user = $manager->select($_GET['id']);

}

require '../template/tpt-profil-page.php';