<?php

require '../app/entity/User.php';
require_once '../app/manager/Manager.php';

class UserManager extends Manager{

    public function selectAll(){
        $sql = 'SELECT * FROM users';
        $req = $this->getPdo()->prepare($sql);
        $req->execute();
        $result = [];
        $users= $req->fetchAll(PDO::FETCH_ASSOC);
        if($users != null){
            foreach($users as $user){
                $result[] = (new User())->hydrate($user);
            }
        }else{
            $result = null;
        }
        return $result;
    }

    public function select(int $id){
        $sql = "SELECT * FROM users WHERE id = :id";
        $req = $this->getPdo()->prepare($sql);
        $req->execute([
            'id' => $id
        ]);
        $result = $req->fetch(PDO::FETCH_ASSOC);
        if($result != null){
            $user = (new User())->hydrate($result);
        }else{
            $user = null;
        }
        return $user;
    }
    
    public function selectByMail(string $mail){ //Permet de récuperer un l'ID relié a un e-mail dans la DB
        $sql = "SELECT * FROM users WHERE email = :email";
        $req = $this->getPdo()->prepare($sql);
        $req->execute([
            'email' => $mail
        ]);
        $result = $req->fetch(PDO::FETCH_ASSOC);
        if($result != null){
            $user = (new User())->hydrate($result);
        }else{ 
            $user= null; 
        }
        return $user;
    }

    public function insert(string $lastName, string $firstName, string $mail, string $password){
        $sql = 'INSERT INTO users(lastName, firstName, email, creation_date, password, type_user, id_type_user) VALUES (:lastName, :firstName, :email, NOW() ,:password , "user" ,2)';
        $req = $this->getPdo()->prepare($sql);
        $req->execute([
            'lastName' => $lastName,
            'firstName' => $firstName,
            'email' => $mail,
            'password' => $password
        ]);
        return $this->getPdo()->lastInsertId();
    }

    public function update(int $id, string $lastName, string $firstName, string $mail, string $password, string $type_user, int $id_type_user){
        $sql="UPDATE users SET lastName = :lastName, firstName= :firstName, email= :email, creation_date= NOW() ,password= :password , type_user = :type_user , id_type_user = :id_type_user, password= :password WHERE id =  :id";
        $req = $this->getPdo()->prepare($sql);
        $req->execute([
            'id' => $id,
            'lastName' => $lastName,
            'firstName' => $firstName,
            'email' => $mail,
            'password' => $password,
            'type_user' => $type_user,
            'id_type_user' => $id_type_user
        ]);
    }
}