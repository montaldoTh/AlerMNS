<?php

require_once '../app/entity/Entity.php';

class Message extends Entity {

    private int $idMsg;
    private string $content;
    private string $sendingDate;
    private string $recipient;
    private int $idUsers;

    


    /**
     * Get the value of idMsg
     */ 
    public function getIdMsg()
    {
        return $this->idMsg;
    }

    /**
     * Set the value of idMsg
     *
     * @return  self
     */ 
    public function setIdMsg($idMsg)
    {
        $this->idMsg = $idMsg;

        return $this;
    }

    /**
     * Get the value of content
     */ 
    public function getContent()
    {
        return $this->content;
    }

    /**
     * Set the value of content
     *
     * @return  self
     */ 
    public function setContent($content)
    {
        $this->content = $content;

        return $this;
    }

    /**
     * Get the value of sendingDate
     */ 
    public function getSendingDate()
    {
        return $this->sendingDate;
    }

    /**
     * Set the value of sendingDate
     *
     * @return  self
     */ 
    public function setSendingDate($sendingDate)
    {
        $this->sendingDate = $sendingDate;

        return $this;
    }

    /**
     * Get the value of recipient
     */ 
    public function getRecipient()
    {
        return $this->recipient;
    }

    /**
     * Set the value of recipient
     *
     * @return  self
     */ 
    public function setRecipient($recipient)
    {
        $this->recipient = $recipient;

        return $this;
    }

    /**
     * Get the value of idUsers
     */ 
    public function getIdUsers()
    {
        return $this->idUsers;
    }

    /**
     * Set the value of idUsers
     *
     * @return  self
     */ 
    public function setIdUsers($idUsers)
    {
        $this->idUsers = $idUsers;

        return $this;
    }
}