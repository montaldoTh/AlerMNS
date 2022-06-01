<?php

require '../app/entity/User.php';
require_once '../app/manager/Manager.php';

class UserManager extends Manager{


    // Requete SELECT toute la table
    public function selectAll(){
        $sql = 'SELECT * FROM users ORDER BY id ASC LIMIT 15';
        $req = $this->getPdo()->prepare($sql);
        $req->execute();
        $result = [];
        $users= $req->fetchAll();
        if($users != null){
            foreach($users as $user){
                $result[] = (new User())->hydrate($user);
            }
        }else{
            $result = null;
        }
        return $result;
    }

    // SELECT sur 1 utilisateur
    public function select(int $id){
        $sql = "SELECT * FROM users WHERE id = :id";
        $req = $this->getPdo()->prepare($sql);
        $req->execute([
            'id' => $id
        ]);
        $result = $req->fetch();
        if($result != null){
            $user = (new User())->hydrate($result);
        }else{
            $user = null;
        }
        return $user;
    }
    
    // SELECT via EMail pour tester l'existance d'un mail pour la connexion (principalement)
    public function selectByMail(string $mail){ //Permet de récuperer un l'ID relié a un e-mail dans la DB
        $sql = "SELECT * FROM users WHERE email = :email";
        $req = $this->getPdo()->prepare($sql);
        $req->execute([
            'email' => $mail
        ]);
        $result = $req->fetch();
        if($result != null){
            $user = (new User())->hydrate($result);
        }else{ 
            $user= null; 
        }
        return $user;
    }

    // INSERT / Créer 
    public function insert(string $lastName, string $firstName, string $mail, string $password){
        $sql = 'INSERT INTO users(lastName, firstName, email, registerDate, password, typeUser, id_type_user) VALUES (:lastName, :firstName, :email, NOW() ,:password , "user" ,2)';
        $hash = str_replace('$argon2i$v=19$m=65536,t=4,p=1$', '', password_hash($password, PASSWORD_ARGON2I));
        
        $req = $this->getPdo()->prepare($sql);
        $req->execute([
            'lastName' => $lastName,
            'firstName' => $firstName,
            'email' => $mail,
            'password' => $hash
        ]);

        return $this->getPdo()->lastInsertId();
    }

    // UPDATE / Met a jour
    public function update(int $id, string $lastName, string $firstName, string $mail, string $password, string $typeUser, int $id_type_user){
        $sql="UPDATE users SET lastName = :lastName, firstName= :firstName, email= :email, creation_date= NOW() ,password= :password , type_user = :type_user , id_type_user = :id_type_user, password= :password WHERE id =  :id";
        $hash = password_hash($password, PASSWORD_ARGON2I);

        $req = $this->getPdo()->prepare($sql);
        $req->execute([
            'id' => $id,
            'lastName' => $lastName,
            'firstName' => $firstName,
            'email' => $mail,
            'password' => $hash,
            'typeUser' => $type_user,
            'id_type_user' => $id_type_user
        ]);
    }
}