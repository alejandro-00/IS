<?php
include 'connection.php';

/*if($_SESSION['userid']==''){
	die('Invalid');
}*/

$results;
$MAT = $_POST["matricula"];

$stbi = $conn->prepare("SELECT A.MATRICULA,A.NOMBRE,A.PATERNO,A.MATERNO,A.SEXO,CC.N_C,E.N_ESC FROM cursa C 
JOIN alumnos A ON A.MATRICULA=C.MATRICULA
JOIN carrera CC ON C.ID_C=CC.ID_C
JOIN escuelas E ON CC.ID_E=E.ID_E
WHERE A.MATRICULA=;'$MAT'");
//$stbi->bindParam(1, $MAT);
$stbi->setFetchMode(PDO::FETCH_ASSOC);
$stbi->execute();
$results = $stbi->fetchAll();
//print_r($results);
echo json_encode($results);

$conn=null;

/*
$sql = "CALL ALM(".$MAT.")";
$stmt= $conn->query($sql);
$row = $stmt->columnCount();
if($row>0){
    print_r($row);
    $stbi = $conn->prepare("CALL ALM(?)");
    $stbi->bindParam(1, $MAT);
    $stbi->setFetchMode(PDO::FETCH_ASSOC);
    $stbi->execute();
    $results = $stbi->fetchAll();
    print_r($results);
}else{
    echo 1;
}*/
/*
$sql = "CALL ALM(".$MAT.")";
$stmt = $conn->query($sql);
if($stmt -> num_rows > 0){
    $res = $stmt->fetch_array();
    print_r($res);
    while($row = $res){
        $results[] = $row;
    }
    print_r($results);
    if($res->num_rows >0){
    //echo json_encode($results = $res->fetch_All());
}else{echo 1;}
*/
?>