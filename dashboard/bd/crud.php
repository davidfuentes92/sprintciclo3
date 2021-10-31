<?php
include_once '../bd/conexion.php';
$objeto = new Conexion();
$conexion = $objeto->Conectar();

$nombres = (isset($_POST['nombres'])) ? $_POST['nombres'] : '';
$apellidos = (isset($_POST['apellidos'])) ? $_POST['apellidos'] : '';
$edad = (isset($_POST['edad'])) ? $_POST['edad'] : '';

$opcion = (isset($_POST['opcion'])) ? $_POST['opcion'] : '';
$cedula = (isset($_POST['cedula'])) ? $_POST['cedula'] : '';


switch($opcion){
    case 1: //Agregar (Nuevo)
        $consulta = "INSERT INTO registro (cedula, nombres, apellidos,edad) VALUES('$cedula','$nombres', '$apellidos', '$edad') ";			
        $resultado = $conexion->prepare($consulta);
        $resultado->execute(); 
        
        $consulta = "SELECT * FROM registro ORDER BY cedula DESC LIMIT 1";
        $resultado = $conexion->prepare($consulta);
        $resultado->execute();
        $data=$resultado->fetchAll(PDO::FETCH_ASSOC);       
        break;    
    case 2: //Modificar       
        $consulta = "UPDATE registro SET nombres='$nombres', apellidos='$apellidos', edad='$edad' WHERE cedula='$cedula' ";		
        $resultado = $conexion->prepare($consulta);
        $resultado->execute();        
        
        $consulta = "SELECT cedula, nombres, apellidos, edad FROM registro WHERE cedula='$cedula' ";       
        $resultado = $conexion->prepare($consulta);
        $resultado->execute();
        $data=$resultado->fetchAll(PDO::FETCH_ASSOC);
        break;    
    case 3: //Borrar       
        $consulta = "DELETE FROM registro WHERE cedula='$cedula' ";		
        $resultado = $conexion->prepare($consulta);
        $resultado->execute();                           
 
        $consulta = "SELECT * FROM registro";
        $resultado = $conexion->prepare($consulta);
        $resultado->execute();        
        $data=$resultado->fetchAll(PDO::FETCH_ASSOC);
        break;
    case 4: //Lectura    
        $consulta = "SELECT * FROM registro";
        $resultado = $conexion->prepare($consulta);
        $resultado->execute();        
        $data=$resultado->fetchAll(PDO::FETCH_ASSOC);
        break;
}

print json_encode($data, JSON_UNESCAPED_UNICODE);//envio el array final el formato json a AJAX
$conexion=null;