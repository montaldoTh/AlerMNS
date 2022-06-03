<?php
session_start();

$message = NULL;

require '../app/manager/User-Manager.php';

$manager = new UserManager;
if (isset($_POST['submit'])) { //Meme manière de faire que dans register-page.php on verifie d'abord que chaque champs est rempli et s'il correspond à une adresse mail en DB puis, si le mot de passe correspond a l'e-mail renseigner
    try {
        $formErrors = [];
        if (empty($_POST['mail'])) {
            $formErrors[] = 'Veuillez entrez votre E-mail';
        }
        if (empty($_POST['password'])) {
            $formErrors[] = 'Veuillez entrez votre mot de passe';
        }
        if (!empty($_POST['mail'])) { //Verification d'e-mail en DB
            $mail = $manager->selectByMail($_POST['mail']);


            if ($mail != null) {
                $mail->getEmail() ? null : $formErrors[] = "login failed";
            }
            if (!empty($_POST['password'])) { //Verification du mot passe relié a l'e-mail
                $pw = $mail->getPassword();
                if ($pw != NULL) {
                    password_verify($_POST['password'], $pw) ? null : $formErrors[] = 'login failed';
                }
            }
        }
        if (count($formErrors) > 0) {
            throw new Exception(implode("<br />", $formErrors));
        }
        $user = $manager->selectByMail($_POST['mail']);
        $id = $user->getId();
        header("location: /profil.php?id=$id");
    } catch (Exception $e) {
        $message = $e->getMessage();
    }
}


require '../template/tpt-login-page.php';
