<?php 
require_once 'Classes/PHPExcel.php';

include 'connection.php';

$arr=json_decode($_GET["x"]);

$dates=[];
$dates[0]=date("o-m-d", strtotime($arr->FID));
$dates[1]=date("o-m-d", strtotime($arr->LAD));

$stbi = $conn->prepare("SELECT * FROM registro where FECHA between '$dates[0]' and '$dates[1]';");
$stbi->setFetchMode(PDO::FETCH_ASSOC);
$stbi->execute();
$data = $stbi->fetchAll();
//print_r($data);


$obj = new PHPExcel();
$obj->getActiveSheet()->setTitle('Registros');
$obj->getActiveSheet()->setCellValueByColumnAndRow(0,1,'Matrícula');
$obj->getActiveSheet()->setCellValueByColumnAndRow(1,1,'Nombre');
$obj->getActiveSheet()->setCellValueByColumnAndRow(2,1,'Apellido paterno');
$obj->getActiveSheet()->setCellValueByColumnAndRow(3,1,'Apellido materno');
$obj->getActiveSheet()->setCellValueByColumnAndRow(4,1,'Sexo');
$obj->getActiveSheet()->setCellValueByColumnAndRow(5,1,'Carrera');
$obj->getActiveSheet()->setCellValueByColumnAndRow(6,1,'Escuela');
$obj->getActiveSheet()->setCellValueByColumnAndRow(7,1,'Llave');
$obj->getActiveSheet()->setCellValueByColumnAndRow(8,1,'Numero telefónico');
$obj->getActiveSheet()->setCellValueByColumnAndRow(9,1,'Hora');
$obj->getActiveSheet()->setCellValueByColumnAndRow(10,1,'Fecha');
for($i = 0;$i < count($data);$i ++){
    $obj->getActiveSheet()->setCellValueByColumnAndRow(0,($i+2),utf8_encode($data[$i]['MATRICULA']));
    $obj->getActiveSheet()->setCellValueByColumnAndRow(1,($i+2),utf8_encode($data[$i]['NOMBRE_ALUMNO']));
    $obj->getActiveSheet()->setCellValueByColumnAndRow(2,($i+2),utf8_encode($data[$i]['PATERNO']));
    $obj->getActiveSheet()->setCellValueByColumnAndRow(3,($i+2),utf8_encode($data[$i]['MATERNO']));
    $obj->getActiveSheet()->setCellValueByColumnAndRow(4,($i+2),'');
    $obj->getActiveSheet()->setCellValueByColumnAndRow(5,($i+2),utf8_encode($data[$i]['NOMBRE_CARRERA']));
    $obj->getActiveSheet()->setCellValueByColumnAndRow(6,($i+2),utf8_encode($data[$i]['NOMBRE_FACULTAD']));
    $obj->getActiveSheet()->setCellValueByColumnAndRow(7,($i+2),utf8_encode($data[$i]['LLAVE']));
    $obj->getActiveSheet()->setCellValueByColumnAndRow(8,($i+2),utf8_encode($data[$i]['NUMERO_TELEFONO']));
    $obj->getActiveSheet()->setCellValueByColumnAndRow(9,($i+2),utf8_encode($data[$i]['HORA']));
    $obj->getActiveSheet()->setCellValueByColumnAndRow(10,($i+2),utf8_encode($data[$i]['FECHA']));
}

header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header('Content-Disposition: attachment;filename="registros.xlsx"');
header('Cache-Control: max-age=0');

$objWriter=PHPExcel_IOFactory::createWriter($obj,'Excel2007');
$objWriter->save('php://output');

$conn=null;


?>