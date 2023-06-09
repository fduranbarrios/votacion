<?php

require_once "conexion.php";

class candidatoModel{
    public function mdlCandidato(){
        $stmt = Conexion::conectar()->prepare("SELECT * FROM candidatos");
        $stmt->execute();
        $candidatos = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($candidatos);
    }
}

?>