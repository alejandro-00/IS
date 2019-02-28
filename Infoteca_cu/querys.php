<?php
include 'connection.php';

$results;
$id;
$date_s;
$date_f;

$stbd = $conn->prepare("select concat(FirstName,' ', LastName) as Full_name, City, year(HireDate) as year from employees where HireDate between ? and ?;");
$stbd->bindParam(1, $date_s);
$stbd->bindParam(2, $date_f);
$stbd->setFetchMode(PDO::FETCH_ASSOC);
    $stbd->execute();
    $results = $stbd->fetchAll();

$stbi = $conn->prepare("select concat(FirstName,' ', LastName) as Full_name, City, year(HireDate) as year from employees where employeeid = ?;");
$stbi->bindParam(1, $id);
$stbi->setFetchMode(PDO::FETCH_ASSOC);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if($_POST["date_s"]!=null && $_POST["date_f"]!=null && $_POST["id"]==null) {
        $date_s = test_input($_POST["date_s"]);
        $date_f = test_input($_POST["date_f"]);
        $stbd->execute();
        $results = $stbd->fetchAll();
    } elseif($_POST["date_s"]==null && $_POST["date_f"]==null && $_POST["id"]!=null) {
        $id = test_input($_POST["id"]);
        $stbi->execute();
        $results = $stbi->fetchAll();
    }
}

function test_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}
?>