<?php 

$message ='';

if(isset($_POST['submit'])){
    if(!empty($_POST['firstName']) && !empty($_POST['lastName']) && !empty($_POST['mail']) && !empty($_POST['pasword'])){
        require '../app/manager/User-Manager.php';
        $manager = new UserManager();
        $userId = $manager->insert($_POST['firstName'], $_POST['lastName'], $_POST['mail'], $_POST['pasword']);
        if($userId){
            header('location: /'); die;
        } else {
            $message = "Une erreur s'est produite lors de l'inscription";
        }
        
    }else{
        switch($_POST){
            case 'firstName':
                $_POST['firstName'] ? $message = "" : $message='Le prénom est obligatoire'; 
                return($message);break;
            case 'lastName':
                $_POST['lastName'] ? $message = "" : $message='Le nom est obligatoire';
                return($message);break;

            case 'mail':
                $_POST['mail'] ? $message = "" : $message="L'e-mail est obligatoire";
                return($message);break;

            case 'pasword':
                $_POST['pasword'] ? $message = "" : $message='Le mot de passe est obligatoire';
                return($message);break;
        }
    }
}
require '../template/tpt-register-page.php';
