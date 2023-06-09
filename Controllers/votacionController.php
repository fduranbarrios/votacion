<?php 
class votacionController{

    //SE LLAMA LA VISTA DE VOTACION
    public function index(){
        include "Views/index.php";
    }

    //GUARDAR VOTACION
    public function store($nombre,$alias,$rut,$email,$region,$comuna,$candidato,$fuentes){
        require "../../Models/votacionModel.php";
        //VERIFICAR QUE EL RUT NO EXISTA EN LA BD
        $validarRut = new votacionModel();
        if(count($validarRut->validarRut($rut)) == 0){
            $fuenteGuardar = "";
            foreach($fuentes as $fuente){
                $fuenteGuardar.= $fuente.",";
            }
            $posicion = strrpos($fuenteGuardar,",");
            $remplazar = substr_replace($fuenteGuardar," ",$posicion);
            $votacion = new votacionModel();
            $votacion->mdlVotacion($nombre,$alias,$rut,$email,$region,$comuna,$candidato,$remplazar);
        }else{
            echo "Rut ya existe";
        }
        
    }
}
?>