<?php
include 'connection.php';

//recibe json {MAT INT,NA STRING,AP STRING,AM STRING,NC STRING,NF STRING,LL INT,T INT}
$json=json_decode($_GET["ALUMNO"],false);
$result=[];
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
    //*investigar datos de execute()*//
    $stbi->execute();
    //Comprueba si coincide la matrícula del último registro con a matrícula del alumno
    if($json->MAT == $conn->lastInserId()){
        //if true
        $result[0]=1;
        $result[1]="Registro exitoso";
        echo $json=json_encode($result[1]);
    }
}
catch(PDOException $e){
    $result[0]=0;
    $result[1]=$e->getMessage();
    echo $json=json_encode($result);
}

$conn=null;

?>
