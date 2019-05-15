<?php
include 'connection.php';

//recibe json {MAT INT,NA STRING,AP STRING,AM STRING,NC STRING,NF STRING,LL INT,T INT}
$json=json_decode($_POST["x"],false);
//print_r($json);
//echo $json->MAT;
$result=[];

try{
    $stbi = $conn->prepare("INSERT INTO registro(MATRICULA,NOMBRE_ALUMNO,PATERNO,MATERNO,NOMBRE_CARRERA,NOMBRE_FACULTAD,HORA,FECHA) 
    VALUES(?,?,?,?,?,?,TIME(NOW()),DATE(NOW()));");
    $stbi->bindParam(1,$json->MAT);
    $stbi->bindParam(2,$json->NA);
    $stbi->bindParam(3,$json->AP);
    $stbi->bindParam(4,$json->AM);
    $stbi->bindParam(5,$json->NC);
    $stbi->bindParam(6,$json->NF);
    //investigar datos de execute()//
    $stbi->execute();
    //Comprueba si coincide la matrícula del último registro con a matrícula del alumno
    $id=$conn->lastInsertId();
    echo $id;
    if($json->MAT == $conn->lastInsertId()){
        //if true
        $result[0]=1;
        $result[1]="Registro exitoso";
        echo $json=json_encode($result[0]);
    }
}
catch(PDOException $e){
    $result[0]=0;
    $result[1]=$e->getMessage();
    echo $json=json_encode($result);
}
$conn=null;

?>