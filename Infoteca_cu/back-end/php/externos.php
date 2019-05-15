<?php
include 'connection.php';
session_start();

if($_SESSION['userid']=='' or $_SESSION['pswd']==''){
	die('Invalid');
}

$data = json_decode($_GET);

try {
    $stbi = $conn->prepare("INSERT INTO tabla (matricula, fecha, hora) VALUES (?,?,?)");
    $stbi->setFetchMode(PDO::FETCH_ASSOC);
    $stbi->execute([$data['mat'], $date, $time]);
    $stbi = null;
} catch (Exception $e) {
    echo 'Message: '.$e->getMessage();
}

$conn = null;
?>
