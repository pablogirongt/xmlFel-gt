<?php


$host = "localhost";
$usuario= "root";
$contraseña = "";

try {
   $conexion = new PDO("mysql:host=$host;dbname=itic", $usuario, $contraseña);
   $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
   $conexion->exec("set names utf8");
    return$conexion;
    }
catch(PDOException $error)
    {
    	echo "No se pudo conectar a la BD: " . $error->getMessage();
    }

?>