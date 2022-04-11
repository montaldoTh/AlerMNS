<?php 
$message=NULL;
$userId = NULL;

require '../app/manager/User-Manager.php';
$manager = new UserManager;
if(isset($_POST['submit'])){
    try{
        $formErrors = [];
        if(empty($_POST['mail']))
            $formErrors[]= 'Veuillez votre E-mail';

        if(empty($_POST['pasword']))
            $formErrors[]= 'Veuillez entrez votre mot de passe';

        if(isset($_POST['mail']))
            $mail = $manager->checkMail($_POST['mail']);
            $mail ? null : $formErrors[]= "l'E-mail renseigner n'est pas existant";

        if(isset($_POST['pasword']))
            $pw = $manager->checkPw($_POST['mail']);
            $pw->getPasword() == $_POST['pasword'] ? null : $formErrors[]= 'Le mot de passe est faux, veuillez saissir le bon mot de passe';

        if(count($formErrors) > 0)
            throw new Exception(implode("<br />", $formErrors));
        $user = $manager->selectByMail($_POST['mail']);
        $id = $user->getId();
        header("location: /profil.php?id=$id");
    }catch(Exception $e){
        $message = $e->getMessage();
    }
}

require '../template/tpt-login-page.php';
