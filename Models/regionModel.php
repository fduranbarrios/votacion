<?php

require_once "conexion.php";

class regionModel{
    public function mdlRegion(){
        $stmt = Conexion::conectar()->prepare("SELECT * FROM regiones");
        $stmt->execute();
        $regiones = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($regiones);
    }
}

?>