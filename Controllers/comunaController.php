<?php 

require "../../Models/comunaModel.php";

class comunaController{
    public function showComunas($region){
        $regiones = new comunaModel();
        $regiones->mdlComuna($region);
    }
}

?>