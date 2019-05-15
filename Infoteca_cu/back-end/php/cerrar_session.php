<?php
$data = json_decode($_GET);
session_start();

try {
	session_destroy();
	echo true;
} catch (Exception $e) {
    echo 'Message: '.$e->getMessage();
}

?>
