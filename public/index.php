<?php 
session_start();

$message=NULL;

require '../app/manager/User-Manager.php';

$manager = new UserManager;
if(isset($_POST['submit'])){ //Meme manière de faire que dans register-page.php on verifie d'abord que chaque champs est rempli et s'il correspond à une adresse mail en DB puis, si le mot de passe correspond a l'e-mail renseigner
    try{
        $formErrors = [];
        if(empty($_POST['mail'])){
            $formErrors[]= 'Veuillez entrez votre E-mail';
        }
        if(empty($_POST['password'])){
            $formErrors[]= 'Veuillez entrez votre mot de passe';
        }
        
        if(!empty($_POST['mail'])){ //Verification d'e-mail en DB
            $mail = $manager->selectByMail($_POST['mail']);
            if($mail == null){
                $formErrors[]= "Connexion impossible, verifier vos identifiants";
            }if(!empty($_POST['password'])){ //Verification du mot passe relié a l'e-mail
                $pw = '$argon2i$v=19$m=65536,t=4,p=1$' . $mail->getPassword();
                var_dump($pw);
                if($pw != NULL){
                    password_verify($_POST['password'], $pw) ? null : $formErrors[]= 'Connexion impossible, verifier vos identifiants'; 
                }
            }
        }

        if(count($formErrors) > 0){
            throw new Exception(implode("<br />", $formErrors));
        }
        $user = $manager->selectByMail($_POST['mail']);
        $id = $user->getId();
        header("location: /profil.php?logged=$id");
    }catch(Exception $e){
        $message = $e->getMessage();
    }
}

require '../template/tpt-login-page.php';
