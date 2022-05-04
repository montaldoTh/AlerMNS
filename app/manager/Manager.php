<?php 

abstract class Manager
{
    protected static $pdo = NULL;
// Le méthode ci dessous nous permet d'instancier PDO une seul et unique fois et de la partager via l'héritage a nos autres manager
    protected function getPdo()
    {
        if(self::$pdo == NULL){
            try
            {
                // self::$pdo = new PDO('mysql:host=51.77.210.152;dbname=alertmns;port=3306;charset=UTF8','atashi', 'Aedlp1467!');

                self::$pdo = new PDO('mysql:host=localhost;dbname=alert', 'root', '');
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