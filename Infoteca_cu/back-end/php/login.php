<?php
include 'connection.php';
session_start();

$data = json_decode($_GET);

try {
    $stbi = $conn->prepare("Select NOM_USER, PASW_USER, permissions from users where name = ?");
    $stbi->setFetchMode(PDO::FETCH_ASSOC);
    $stbi->execute($data['name']);
    $res = $stbi.fetch();
    if ($data['pswd']==$res['pswd']) {
		$_SESSION['userid'] = $data['name'];
		$_SESSION['pswd'] = $data['pswd'];
        $>SESSION['status'] = $res['permissions'];
		$stbi = null;
		echo true;
	}
} catch (Exception $e) {
    echo 'Message: '.$e->getMessage();
}

$conn = null;

?>
