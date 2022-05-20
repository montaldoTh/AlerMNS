<?php 

require '../app/entity/Message.php';
require_once '../app/manager/Manager.php';

class MessageManager extends Manager{

    // Pour l'instant
    public function selectAll(){
        $sql= 'SELECT * FROM msg_btw_users ORDER BY creation_date DESC';
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
        $sql= 'SELECT users.lastName, users.firstName, msg_btw_users.dispach, msg_btw_users.texte FROM msg_btw_users
        INNER JOIN users ON msg_btw_users.id_users = users.id';
        $req = $this->getPdo()->prepare($sql);
        $req->execute();
        $messages = $req->fetchAll(PDO::FETCH_ASSOC);
        return $messages;
    }
     
}
?>