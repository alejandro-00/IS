<?php
include 'connection.php';

//recibe json {MAT INT,NA STRING,AP STRING,AM STRING,NC STRING,NF STRING,LL INT,T INT}
$json=json_decode($_GET["ALUMNO"],false);
$results;
try{
    $stbi = $conn->prepare("CALL registrar(?,?,?,?,?,?,?,?)");
    $stbi->bindParam(1,$json->MAT);
    $stbi->bindParam(2,$json->NA);
    $stbi->bindParam(3,$json->AP);
    $stbi->bindParam(4,$json->AM);
    $stbi->bindParam(5,$json->NC);
    $stbi->bindParam(6,$json->NF);
    $sbti->bindParam(7,$json->LL);
    $stbi->bindParam(8,$json->T);
    $stbi->execute();
    //Comprueba si coincide la matrícula del último registro con a matrícula del alumno
    if($json->MAT == $conn->lastInserId()){
        //if true
        echo 1;
    }
    else{
        //if false
        echo 0;
    }
}
catch(PDOException $e){
    echo $e->getMessage();
}

$conn=null;

?>