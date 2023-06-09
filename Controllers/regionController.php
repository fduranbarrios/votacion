<?php 

require "../../Models/regionModel.php";

class regionController{
    public function showRegiones(){
        $regiones = new regionModel();
        $regiones->mdlRegion();;
    }
}

?>