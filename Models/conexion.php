<?php 

class Conexion{
    static public function conectar(){
        try{
            $link = new PDO("mysql:host=localhost;dbname=votacion","root","");
            $link->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $link->exec("set names utf8mb4");
            return $link;
        }catch(PDOException $e){
            return "Error: ".$e->getMessage();
        }
    }
}

?>