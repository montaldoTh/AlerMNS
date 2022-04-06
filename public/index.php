<?php 

require '../template/partiels/tpt-top.php';
require '../app/manager/User-Manager.php';

$manager = new UserManager();
$users = $manager->selectAll();
var_dump($users);exit;

require '../template/partiels/tpt-bot.php';
