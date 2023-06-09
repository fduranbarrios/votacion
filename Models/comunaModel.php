<?php

require_once "conexion.php";

class comunaModel{
    public function mdlComuna($region){
        $stmt = Conexion::conectar()->prepare("SELECT * FROM comunas WHERE id_region = ".$region);
        $stmt->execute();
        $comunas = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($comunas);
    }
}

//$a = new regionModel();
//echo json_encode($a->mdlRegion());

?>