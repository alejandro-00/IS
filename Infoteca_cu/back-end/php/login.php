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
        $_SESSION['status'] = $res['permissions'];
		$stbi = null;
		if ($res['permissions']==1) {
            echo 'admin';
        } elseif ($res['permissions']==3) {
            echo 'registro'
        }
	}
} catch (Exception $e) {
    echo 'Message: '.$e->getMessage();
}

$conn = null;

?>
