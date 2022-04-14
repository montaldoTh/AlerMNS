<?php

require '../app/manager/User-Manager.php';

$manager= new UserManager();
$users = $manager->selectAll();
var_dump($users);












?>