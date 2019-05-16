<?php
$data = json_decode($_GET);
session_start();

try {
	session_destroy();
	header("Location: http://www.ingresoinfoteca.uadec.mx/");
    die();
} catch (Exception $e) {
    echo 'Message: '.$e->getMessage();
}

?>
