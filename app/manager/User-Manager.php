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
        $sql = 'SELECT * FROM user WHERE id = :id';
        $req = $this->getPdo()->prepare($sql);
        $req->execute([
            'id' => $id
        ]);
        $result = $req->fetch(PDO::FETCH_ASSOC);
        $user = (new User())->hydrate($result);
        return $user;
    }

    public function update(){

    }

    public function insert(string $lastName, string $firstName, string $mail, string $pasword){
        $sql = 'INSERT INTO user (lastName, firstName, mail, pasword) VALUES (:lastName, :firstName, :mail, :pasword)';
        $req = $this->getPdo()->prepare($sql);
        $req->execute([
            'lastName' => $lastName,
            'firstName' => $firstName,
            'mail' => $mail,
            'pasword' => $pasword
        ]);
        return $this->getPdo()->lastInsertId();
    }
}