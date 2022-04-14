<?php

require '../app/entity/User.php';
require_once '../app/manager/Manager.php';

class UserManager extends Manager{

    public function selectAll(){
        $sql = 'SELECT * FROM user';
        $req = $this->getPdo()->prepare($sql);
        $req->execute();
        $result = [];
        $users= $req->fetchAll(PDO::FETCH_ASSOC);
        foreach($users as $user){
            $result[]= (new User())->hydrate($user);
        }
        return $result;
    }

    public function select(int $id){
        $sql = "SELECT * FROM user WHERE id = :id";
        $req = $this->getPdo()->prepare($sql);
        $req->execute([
            'id' => $id
        ]);
        $result = $req->fetch(PDO::FETCH_ASSOC);
        $user = (new User())->hydrate($result);
        return $user;
    }
    
    public function selectByMail(string $mail){ //Permet de récuperer un l'ID relié a un e-mail dans la DB
        $sql = "SELECT id FROM user WHERE mail = :mail";
        $req = $this->getPdo()->prepare($sql);
        $req->execute([
            'mail' => $mail
        ]);
        $result = $req->fetch(PDO::FETCH_ASSOC);
        $user = (new User())->hydrate($result);
        return $user;
    }

    //Permet de vérifier si un email existe en DB
    public function checkMail(string $mail){ 
        $sql = 'SELECT mail FROM user WHERE mail = :mail'; 
        $req = $this->getPdo()->prepare($sql);
        $req->execute([
            'mail' => $mail
        ]);
        $mailPresent= $req->fetch(PDO::FETCH_BOUND); //Ici j'ai choisi d'utiliser FETCH_BOUND afin qu'un boolean soit rendu 
        return $mailPresent;
    }

    //Permet de vérifier si le bon mot de passe à été renseigner
    public function checkPw(string $mail){
        $sql = 'SELECT password FROM user WHERE mail = :mail';
        $req = $this->getPdo()->prepare($sql);
        $req->execute([
            'mail' => $mail
        ]);
        $result = $req->fetch(PDO::FETCH_ASSOC);
        $user = (new User())->hydrate($result);
        return $user;
    }

    public function update(){

    }

    public function insert(string $lastName, string $firstName, string $mail, string $password){
        $sql = 'INSERT INTO user (lastName, firstName, mail, password) VALUES (:lastName, :firstName, :mail, :password)';
        $req = $this->getPdo()->prepare($sql);
        $req->execute([
            'lastName' => $lastName,
            'firstName' => $firstName,
            'mail' => $mail,
            'password' => $password
        ]);
        return $this->getPdo()->lastInsertId();
    }
}