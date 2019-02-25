<?php

    $servername = "localhost";
    $username = "mariomanza";
    $password = "sexymexy45!";
    $dbname = "northwind";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    #prepared statement for query by date range
    $stbd = $conn->prepare("select concat(FirstName,' ', LastName) as Full_name, City, year(HireDate) as year from employees where HireDate between ? and ?;");
    $stbd->bindParam(1, $date_s);
    $stbd->bindParam(2, $date_f);
    $stbd->setFetchMode(PDO::FETCH_ASSOC);
    $results = $stbd->fetchAll();
} catch(PDOException $e) {
        echo "Connection failed: " . $e->getMessage();
    }

    $results;
    $id = 1;
    $date_s = date("Y-m-d");
    $date_f = date("Y-m-d");

    if($_SERVER["REQUEST_METHOD"] == "POST") {
        $date_s = test_input($_POST["date_s"]);
        $date_f = test_input($_POST["date_f"]);
        $stbd->execute();
        $results = $stbd->fetchAll();
    }

function by_id(){
    if($_SERVER["REQUEST_METHOD"] == "POST") {
        $id = test_input($_POST["id"]);
        $stbi->execute($id);
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