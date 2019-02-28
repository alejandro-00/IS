<?php
include 'connection.php';

$sql = "Select * from customers where Country in (";
$arcou = [
    'Mexico','Germany',
    'Spain','UK'];

foreach($arcou as $s) {
    $sql = $sql."'$s',";
}
$sql = rtrim($sql,",").")";
echo $sql;
$results = $conn->query($sql, PDO::FETCH_ASSOC);
echo "<table> <tr><td>Name</td><td>City</td><td>Year</td</tr>";
foreach($results as $result) {
    echo "<tr>";
    foreach($result as $a) {
        echo "<td>$a </td>";
    }
    echo "</tr>";
}
echo "</table>";

?>