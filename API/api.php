<?php

function getConnexion(){
    return new PDO('mysql:host=localhost;dbname=alert', 'root', '', [
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8mb4'
    ]);
}

function postMessage(){
    $pdo = getConnexion();
    if(!isset($_POST['author']) || !isset($_POST['content'])){
        $result = json_encode(['status'=>'error', 'message'=> 'All fields are required.']);
    }elseif(isset($_POST['author'], $_POST['content'], $_POST['receiver']) ){
        $sql="INSERT INTO msg_btw_users SET content= :content, sending_date= NOW(), id_sender= :author, id_receiver= :receiver";
        $req = $pdo->prepare($sql);
        $req->execute([
            'author' => $_POST['author'],
            'content' => $_POST['content'],
            'receiver' => $_POST['receiver']
        ]);
        
        $result = json_encode(['status'=>'success']);
    }
    $idForRedirect = $_POST['author'];
    echo $result;
    header("Location: profil.php?id=$idForRedirect");
}

function getMessage(){
    $pdo = getConnexion();
    $sql= 'SELECT msg_btw_users.id_sender, sender.lastName as senderLstName, sender.firstName as senderFstName, msg_btw_users.content, msg_btw_users.sending_date, msg_btw_users.id_receiver, receiver.lastName as receiverLstName, receiver.firstName as receiverFstName FROM msg_btw_users
    INNER JOIN users AS sender ON msg_btw_users.id_sender = sender.id 
    INNER JOIN users AS receiver ON msg_btw_users.id_receiver = receiver.id
    WHERE msg_btw_users.id_receiver = :receiver ORDER BY msg_btw_users.sending_date DESC';
    $req = $pdo->prepare($sql);
    $req->execute(['receiver' => $_GET['logged']]);
    $messages = $req->fetchAll();
    sendJSON($messages);
}

function getPrivateMsg(){
    $pdo = getConnexion();
    $sql= 'SELECT msg_btw_users.id_sender, sender.lastName as senderLstName, sender.firstName as senderFstName, msg_btw_users.content, msg_btw_users.sending_date, msg_btw_users.id_receiver, receiver.lastName as receiverLstName, receiver.firstName as receiverFstName FROM msg_btw_users
    INNER JOIN users AS sender ON msg_btw_users.id_sender = sender.id 
    INNER JOIN users AS receiver ON msg_btw_users.id_receiver = receiver.id
    WHERE (msg_btw_users.id_sender = :logged AND msg_btw_users.id_receiver = :contact)OR (msg_btw_users.id_sender = :contact AND msg_btw_users.id_receiver = :logged)ORDER BY msg_btw_users.sending_date DESC';
    $req = $pdo->prepare($sql);
    $req->execute([
        'logged' => $_GET['logged'],
        'contact' => $_GET['contact']
    ]);
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