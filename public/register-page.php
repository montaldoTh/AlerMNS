<?php 
//Creation de la variable message qui s'affichera dans le template
$message =NULL;

//Initialisation du manager des utilisateur pour pouvoir effectuer diverses méthodes
require '../app/manager/User-Manager.php';
$manager = new UserManager();

if(isset($_POST['submit'])){ //On verifie si le formulaire a déjà était envoyer
    try{
        $formErrors = [];
        if(empty($_POST['firstName'])){ //On verifie si le champs prénom est vide ou non
            $formErrors[] = 'Votre prénom est obligatoire';
        }
        if(empty($_POST['lastName'])){ //Pareil pour nom
            $formErrors[] = 'Votre nom est obligatoire';
        }
        if(empty($_POST['mail'])){ //Mail
            $formErrors[]= 'Votre e-mail est obligatoire';
        }
        if(empty($_POST['password'])){ //MDP
            $formErrors[]= 'Le mot de passe est obligatoire';
        }
        if(empty($_POST['confirmPsw'])){ //Confirmation MDP
            $formErrors[]= 'Veuillez confirmer votre mot de passe';
        }
        if($_POST['password'] != $_POST['confirmPsw']){ //On verifie si le mdp et la confirmation du MDP sont similaire
            $formErrors[]= 'Les mot de passe ne sont pas identiques';
        }
        if(isset($_POST['mail'])){ //On verifie dans la base de donnée si le mail est déjà utiliser ou non
            $mail = $manager->selectByMail($_POST['mail']);
            if($mail == null){
                $mail ? $formErrors[]= 'E-mail déjà utilisé, veuillez en saisir un autre' : null; 
            }
        }
        if(count($formErrors) > 0){ //S'il y a des erreurs les prépare
            throw new Exception(implode("<br />", $formErrors));
        }
        //Quand il y a 0 erreurs, ajoute les données rentré
        $userId = $manager->insert($_POST['lastName'], $_POST['firstName'], $_POST['mail'], $_POST['password']);
        header("Location: /index.php");
    } catch(Exception $e){ //S'il y a des erreurs affecte la variable message de ses dernières pour ensuite les afficher dans le templates
        $message = $e->getMessage();
    }
}
require '../template/tpt-register-page.php'; 
