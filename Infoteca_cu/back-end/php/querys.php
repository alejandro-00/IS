<?php
include 'connection.php';

if($_SESSION['userid']==''){
	die('Invalid');
}

$data = json_decode($_GET["data"]);
$date = date("Y-m-d");
$time = date("H:i:s");
echo $date."  ".$time;

$stbi = $conn->prepare("INSERT INTO tabla (matricula, fecha, hora) VALUES (?,?,?)");
$stbi->setFetchMode(PDO::FETCH_ASSOC);
$stbi->execute([$data['matricula'], $date, $time]);
$res = $stbi.fetchAll();

echo $res;

$stbi = null;
$conn = null;

function test_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}
?>