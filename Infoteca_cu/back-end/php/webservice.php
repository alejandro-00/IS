<?php
include 'connection.php';


$results;
$MAT = $_GET["matricula"];

$stbi = $conn->prepare("CALL ALM(?)");
$stbi->bindParam(1, $MAT);
$stbi->setFetchMode(PDO::FETCH_ASSOC);
$stbi->execute();
$results = $stbi->fetchAll();

print_r($results);
?>