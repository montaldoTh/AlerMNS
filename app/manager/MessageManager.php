<?php 

require '../app/entity/Message.php';
require_once '../app/manager/Manager.php';

class MessageManager extends Manager{

    // Pour l'instant
    public function selectAll(){
        $sql= 'SELECT * FROM message_envoye_users ORDER BY date_d_envoi DESC';
        $req = $this->getPdo()->prepare($sql);
        $req->execute();
        $result = [];
        $messages = $req->fetchAll(PDO::FETCH_ASSOC);
        if($messages){
            foreach($messages as $message){
                $result[] = (new Message())->hydrate($message);
            }
        }else{
            $result = null;
        }
        return $result;
    }

    public function selectMsgNSndr(){
        $sql= 'SELECT users.lastName, users.firstName, message_envoye_users.date_d_envoi, message_envoye_users.texte FROM message_envoye_users
        INNER JOIN users ON message_envoye_users.id_users = users.id';
        $req = $this->getPdo()->prepare($sql);
        $req->execute();
        $messages = $req->fetchAll(PDO::FETCH_ASSOC);
        return $messages;
    }
     
}
?>