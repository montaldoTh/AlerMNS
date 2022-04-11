<?php 

require '../template/partiels/tpt-top.php';
require '../app/manager/User-Manager.php';

$manager = new UserManager();
$users = $manager->selectMail('allgood@think.yes');
intval($users);
var_dump($users);


require '../template/partiels/tpt-bot.php';
