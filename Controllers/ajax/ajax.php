<?php 

$funcion = $_GET['funcion'];

switch ($funcion){
    case "obtenerRegiones":
        require "../regionController.php";
        $response = new regionController();
        $regiones = $response->showRegiones();
        echo $regiones;
        break;
    case "buscarComuna":
        require "../comunaController.php";
        $region = $_GET['region'];
        $response = new comunaController();
        $comunas = $response->showComunas($region);
        echo $comunas;
        break;
    case "obtenerCandidatos":
        require "../candidatoController.php";
        $response = new candidatoController();
        $candidatos = $response->showCandidatos();
        echo $candidatos;
        break;
}

?>