<?php

    $servername = "localhost";
    $username = "mariomanza";
    $password = "sexymexy45!";
    $dbname = "northwind";
try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    #prepared statement for query by date range
} catch(PDOException $e) {
        echo "Connection failed: " . $e->getMessage();
    }

?>