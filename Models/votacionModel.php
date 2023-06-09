<?php

require "conexion.php";

class votacionModel{
    static public function mdlVotacion($nombre,$alias,$rut,$email,$region,$comuna,$candidato,$fuente){
        $stmt = Conexion::conectar()->prepare("INSERT INTO votaciones (nombres,alias,rut,email,id_region,id_comuna,id_candidato,medio)
        VALUES (:valor1,:valor2,:valor3,:valor4,:valor5,:valor6,:valor7,:valor8)");
        $stmt->bindParam(':valor1', $nombre);
        $stmt->bindParam(':valor2', $alias);
        $stmt->bindParam(':valor3', $rut);
        $stmt->bindParam(':valor4', $email);
        $stmt->bindParam(':valor5', $region);
        $stmt->bindParam(':valor6', $comuna);
        $stmt->bindParam(':valor7', $candidato);
        $stmt->bindParam(':valor8', $fuente);
        $stmt->execute();
        if ($stmt->rowCount() > 0) {
            echo "Inserción exitosa";
        } else {
            echo "No se pudo insertar el registro";
        }
    }

    static public function validarRut($rut){
        $stmt = Conexion::conectar()->prepare("SELECT * FROM votaciones WHERE rut = '$rut'");
        $stmt->execute();
        $validarRut = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return ($validarRut);
    }
}

?>