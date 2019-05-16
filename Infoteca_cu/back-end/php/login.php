<?php
include 'connection.php';
session_start();

$data = json_decode($_POST["x"]);
$user=[];
$user[0]=$data->name;
$user[1]=$data->pswd;
try {
    $stbi = $conn->prepare("SELECT ID_PERFIL,NOM_USER,PASW_USER FROM users WHERE NOM_USER='$user[0]' AND PASW_USER='$user[1]';");
    $stbi->setFetchMode(PDO::FETCH_ASSOC);
    $stbi->execute();
    $res = $stbi->fetch();
    //print_r($res);
    if($res!=null){
        if($res['ID_PERFIL']==1){
            $_SESSION['userid']=$res['ID_PERFIL'];
            $_SESSION['pswd']=$res['PASW_USER'];
            echo "1";
        }elseif ($res['ID_PERFIL']==3){
            $_SESSION['userid']=$res['ID_PERFIL'];
            $_SESSION['pswd']=$res['PASW_USER'];
            echo "3";
        }
    }else {echo "4";}
} catch (PDOException $e) {
    echo 'Message: '.$e->getMessage();
}

$conn = null;

?>
