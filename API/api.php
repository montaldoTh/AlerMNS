<?php

function getConnexion(){
    return new PDO('mysql:host=localhost;dbname=alert', 'root', '', [
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8'
    ]);
}

function postMessage(){
    $pdo = getConnexion();
    if(!isset($_POST['author']) || !isset($_POST['content'])){
        $result = json_encode(['status'=>'error', 'message'=> 'All fields are required.']);
    }elseif(isset($_POST['author']) && isset($_POST['content'])){
        $sql="INSERT INTO msg_btw_users SET content= :content, sending_date= NOW(), id_users= :author";
        $req = $pdo->prepare($sql);
        $req->execute([
            'author' => $_POST['author'],
            'content' => $_POST['content']
        ]);
        
        $result = json_encode(['status'=>'success']);
    }
    $idForRedirect = $_POST['author'];
    echo $result;
    header("Location: profil.php?id=$idForRedirect");
}

function getMessage(){
    $pdo = getConnexion();
    $sql= 'SELECT users.lastName, users.firstName, msg_btw_users.sending_date, msg_btw_users.content FROM msg_btw_users
    INNER JOIN users ON msg_btw_users.id_users = users.id';
    $req = $pdo->prepare($sql);
    $req->execute();
    $messages = $req->fetchAll();
    sendJSON($messages);
}

function sendJSON($infos){
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Headers: *");
    header("Content-Type: application/json");
    echo json_encode($infos, JSON_UNESCAPED_UNICODE);
    // RECHERCHER DES INFOS SUR Content-Type: application/json
    // RECHERCHER DES INFOS SUR Access-Control-Allow-Origin: *
}