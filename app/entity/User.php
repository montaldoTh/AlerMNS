<?php 

require_once '../app/Entity/Entity.php';


class User extends Entity {
    private int $id;
    private string $mail;
    private string $firstName;
    private string $lastName;
    private string $pasword;

    public function getId()
    {
        return $this->id;
    }

    public function setId($id)
    {
        $this->id = $id;

        return $this;
    }

    public function getFirstName()
    {
        return $this->firstName;
    }

    public function setFirstName($firstName)
    {
        $this->firstName = $firstName;

        return $this;
    }

    public function getLastName()
    {
        return $this->lastName;
    }

    public function setLastName($lastName)
    {
        $this->lastName = $lastName;

        return $this;
    }

    public function getPasword()
    {
        return $this->pasword;
    }

    public function setPasword($pasword)
    {
        $this->pasword = $pasword;

        return $this;
    }

    public function getMail()
    {
        return $this->mail;
    }

    public function setMail($mail)
    {
        $this->mail = $mail;

        return $this;
    }
}