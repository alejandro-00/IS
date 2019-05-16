<?php
include 'connection.php';
session_start();

$data = json_decode($_GET);

try {
    $stbi = $conn->prepare("Select NOM_USER, PASW_USER, ID_PERFIL from users where NOM_USER = ?");
    $stbi->setFetchMode(PDO::FETCH_ASSOC);
    $stbi->execute([$data['name']]);
    $res = $stbi->fetch();
    if ($data['pswd']==$res['pswd']) {
		$_SESSION['userid'] = $data['name'];
		$_SESSION['pswd'] = $data['pswd'];
        $_SESSION['status'] = $res['ID_PERFIL'];
		$stbi = null;
		if ($res['permissions']==1) {
            echo 'admin';
        } elseif ($res['permissions']==3) {
            echo 'registro';
        }
	} else {
        echo false;
    }
} catch (Exception $e) {
    echo 'Message: '.$e->getMessage();
}

$conn = null;

?>