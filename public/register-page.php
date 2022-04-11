<?php 

$message =NULL;

require '../app/manager/User-Manager.php';
$manager = new UserManager();

if(isset($_POST['submit'])){
    try{
        $formErrors = [];
        if(empty($_POST['firstName']))
            $formErrors[] = 'Votre prénom est obligatoire';

        if(empty($_POST['lastName']))
            $formErrors[] = 'Votre nom est obligatoire';

        if(empty($_POST['mail']))
            $formErrors[]= 'Votre e-mail est obligatoire';

        if(empty($_POST['pasword']))
            $formErrors[]= 'Le mot de passe est obligatoire';
        
        if(empty($_POST['confirmPsw']))
            $formErrors[]= 'Veuillez confirmer votre mot de passe';

        if($_POST['pasword'] != $_POST['confirmPsw'])
            $formErrors[]= 'Les mot de passe ne sont pas identiques';
    
        if(!empty($_POST['mail']))
            $mail = $manager->selectMail($_POST['mail']);
            intval($mail) ? $formErrors[]= 'E-mail déjà utilisé, veuillez en saisir un autre' : null; 

        if(count($formErrors) > 0)
            throw new Exception(implode("<br />", $formErrors));

        $userId = $manager->insert($_POST['lastName'], $_POST['firstName'], $_POST['mail'], $_POST['pasword']);
        header("Location: /index.php?id=$userId");
    } catch(Exception $e){
        $message = $e->getMessage();
    }
}
require '../template/tpt-register-page.php'; 
