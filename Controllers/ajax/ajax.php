<?php 

$funcion = isset($_GET['funcion']) ? $_GET['funcion'] : $_POST['funcion'];

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

    case "guardar":
        require "../votacionController.php";
        $response = new votacionController();
        $guardar = $response->store($_POST['nombre'],$_POST['alias'],$_POST['rut'],$_POST['email'],$_POST['region'],$_POST['comuna'],$_POST['candidato'],$_POST['fuente']);
        echo $guardar;
        break;
}

?>