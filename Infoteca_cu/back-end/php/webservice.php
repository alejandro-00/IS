<?php
include 'connection.php';


$results;
$MAT = $_GET["matricula"];

$stbi = $conn->prepare("CALL ALM(?)");
$stbi->bindParam(1, $MAT);
$stbi->setFetchMode(PDO::FETCH_ASSOC);
$stbi->execute();
$results = $stbi->fetchAll();
//print_r($results);
echo json_encode($results);

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