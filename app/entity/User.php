<?php 

require_once '../app/Entity/Entity.php';


class User extends Entity {
    private int $id;
    private string $lastName;
    private string $firstName;
    private string $email;
    private string $creationDate;
    private string $password;
    private string $typeUser;
    private string $idTypeUser;

    public function getId()
    {
        return $this->id;
    }

    public function setId($id)
    {
        $this->id = $id;

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

    public function getFirstName()
    {
        return $this->firstName;
    }

    public function setFirstName($firstName)
    {
        $this->firstName = $firstName;

        return $this;
    }

    public function getEmail()
    {
        return $this->email;
    }

    public function setEmail($email)
    {
        $this->email = $email;

        return $this;
    }

    public function getCreationDate()
    {
        return $this->creationDate;
    }

    public function setCreationDate($creationDate)
    {
        $this->creationDate = $creationDate;

        return $this;
    }

    public function getPassword()
    {
        return $this->password;
    }

    public function setPassword($password)
    {
        $this->password = $password;

        return $this;
    }

    public function getTypeUser()
    {
        return $this->typeUser;
    }

    public function setTypeUser($typeUser)
    {
        $this->typeUser = $typeUser;

        return $this;
    }

    public function getIdTypeUser()
    {
        return $this->idTypeUser;
    }

    public function setIdTypeUser($idTypeUser)
    {
        $this->idTypeUser = $idTypeUser;

        return $this;
    }
}