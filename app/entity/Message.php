<?php

require_once '../app/entity/Entity.php';

class Message extends Entity {

    private int $idMessage;
    private string $texte;
    private string $dateDEnvoi;
    private string $destinataire;
    private int $idUsers;

    


    /**
     * Get the value of idMessage
     */ 
    public function getIdMessage()
    {
        return $this->idMessage;
    }

    /**
     * Set the value of idMessage
     *
     * @return  self
     */ 
    public function setIdMessage($idMessage)
    {
        $this->idMessage = $idMessage;

        return $this;
    }

    /**
     * Get the value of texte
     */ 
    public function getTexte()
    {
        return $this->texte;
    }

    /**
     * Set the value of texte
     *
     * @return  self
     */ 
    public function setTexte($texte)
    {
        $this->texte = $texte;

        return $this;
    }

    /**
     * Get the value of dateDEnvoi
     */ 
    public function getDateDEnvoi()
    {
        return $this->dateDEnvoi;
    }

    /**
     * Set the value of dateDEnvoi
     *
     * @return  self
     */ 
    public function setDateDEnvoi($dateDEnvoi)
    {
        $this->dateDEnvoi = $dateDEnvoi;

        return $this;
    }

    /**
     * Get the value of destinataire
     */ 
    public function getDestinataire()
    {
        return $this->destinataire;
    }

    /**
     * Set the value of destinataire
     *
     * @return  self
     */ 
    public function setDestinataire($destinataire)
    {
        $this->destinataire = $destinataire;

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