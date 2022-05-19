<?php abstract class Entity
{
    public function hydrate(array $data) //Permet de passer d'un tableau associatif à un objet
    {
        foreach($data as $key => $value) //Pour chaque entrée
        {
            $key = explode('_',$key);  //Ici nous vérifions la première lettre de chaque mot afin de mettre cette dernière en majuscule, nous gérons ensuite les prochains automatiquement (les autres mot en PascalCase)
            $method = count($key) == 1 ? "set" . ucfirst($key[0]) : "set";

            if(count($key) > 1){
                foreach($key as $k => $v){
                    $method .= ucfirst($v);
                }
            }
            //Le commentaire du dessus nous permet ensuite de faire appel a des méthodes set en fonction du nom de la clé du tableau associatif (les propriétés de notre objet et le nom de clé doivent être similaire)
            if(method_exists($this, $method)){ //Si la méthode existe, l'execute
                $this->$method($value); 
            }

            $this->$method($value);
        }

        return $this; //Retourne l'objet
    }
}
