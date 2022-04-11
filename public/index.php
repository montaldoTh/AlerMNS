<?php 

require '../app/manager/User-Manager.php';
$manager = new UserManager;

if(isset($_POST['submit'])){
    // try{
    //     $formErrors = [];
    //     if(empty($_POST['mail']))
    //         $formErrors[]= 'Veuillez votre E-mail';

    //     if(empty($_POST['password']))
    //         $formErrors[]= 'Veuillez entrez votre mot de passe';

    //     if($_POST['mail'])
    
    // }
}

require '../template/tpt-login-page.php';
