<?php
include 'connection.php';
session_start();

if($_SESSION['userid']=='' or $_SESSION['pswd']==''){
	die('Invalid');
}

$data = json_decode($_GET);

try {
    $stbi = $conn->prepare("INSERT INTO tabla (nombre,ap,am,ocup,tel,inst, fecha, hora) VALUES (?,?,?)");
    $stbi->setFetchMode(PDO::FETCH_ASSOC);
    $stbi->execute([$data['nombre'],$data['ap'],$data['am'],$data['ocup'],$data['tel'],$data['inst'], $date, $time]);
    $stbi = null;
    echo true;
} catch (Exception $e) {
    echo 'Message: '.$e->getMessage();
}

$conn = null;
?>
