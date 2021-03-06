<?php 

abstract class Manager
{
    protected static $pdo = NULL;
// Le méthode ci dessous nous permet d'instancier PDO une seul et unique fois et de la partager via l'héritage a nos autres manager
    protected function getPdo()
    {
        if(self::$pdo == NULL){ // Si PDO n'est pas instancier
            try
            {
                // Ce connecte a la base de donnée

                // self::$pdo = new PDO('mysql:host=51.77.210.152;dbname=alertmns;port=3306;charset=UTF8','atashi', 'Aedlp1467!',[
                //     PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                //     PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
                // ] );

                self::$pdo = new PDO('mysql:host=localhost;dbname=alert;charset=utf8', 'root', '',[
                    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
                ]);
            }
            catch(PDOException $e)
            {
                echo 'Error : ' . $e->getMessage();
                die;
            }
        }
        // Sinon retourne PDO

        return self::$pdo;
    }

}   