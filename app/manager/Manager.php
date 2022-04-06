<?php 

abstract class Manager
{
    protected static $pdo = NULL;

    protected function getPdo()
    {
        if(self::$pdo == NULL){
            try
            {
                self::$pdo = new PDO('mysql:host=localhost;dbname=test','root');
            }
            catch(PDOException $e)
            {
                echo 'Error : ' . $e->getMessage();
                die;
            }
        }

        return self::$pdo;
    }

}