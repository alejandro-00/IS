<?php

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "registro";
try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    #prepared statement for query by date range
} catch(PDOException $e) {
        echo "Connection failed: " . $e->getMessage();
    }

    /*$conn = new mysqli($servername, $username, $password, $dbname);
    #prepared statement for query by date range
    if ($conn->connect_error){
        die("Connection failed: " . $conn->connect_error);
    }*/
?>