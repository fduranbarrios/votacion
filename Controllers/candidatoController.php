<?php 

require "../../Models/candidatoModel.php";

class candidatoController{
    public function showCandidatos(){
        $candidatos = new candidatoModel();
        $candidatos->mdlCandidato();
    }
}

?>