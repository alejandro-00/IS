<?php
require('fpdf.php');
date_default_timezone_set("America/Mexico_City");
include 'connection.php';


$json=json_decode($_GET["x"]);
$str=[];
$str[0]=date("o-m-d",strtotime("first day of $json->MES"));
$str[1]=date("o-m-d",strtotime("last day of $json->MES"));
$stbi = $conn->prepare("SELECT R.NOMBRE_FACULTAD,(SELECT count(ID_REGISTRO) FROM registro WHERE HORA BETWEEN '00:00:00' AND '14:59:59' AND NOMBRE_FACULTAD=R.NOMBRE_FACULTAD AND FECHA BETWEEN '$str[0]' AND '$str[1]') AS 'AM',(SELECT count(ID_REGISTRO) FROM registro WHERE HORA BETWEEN '15:00:00' AND '23:59:59' AND NOMBRE_FACULTAD=R.NOMBRE_FACULTAD AND FECHA BETWEEN '$str[0]' AND '$str[1]') AS 'PM',
(SELECT count(ID_REGISTRO) FROM registro WHERE NOMBRE_FACULTAD=R.NOMBRE_FACULTAD AND FECHA BETWEEN '$str[0]' AND '$str[1]') AS TOTAL
FROM registro R
GROUP BY R.NOMBRE_FACULTAD;");
$stbi->bindParam(1,$str[0]);
$stbi->bindParam(2,$str[1]);
$stbi->setFetchMode(PDO::FETCH_ASSOC);
$stbi->execute();
$data = $stbi->fetchAll();

//se crea la clase PDF eredando FPDF para editar el Header y el Footer
class PDf extends FPDF{
    function LoadData($file){
        // Leer las l�neas del fichero
        $lines = file($file);
        $data = array();
        foreach($lines as $line)
        $data[] = explode(';',trim($line));
        return $data;
    }
    //funcion que crea la cabecera del archivo
    function Header(){
        /*se inserta una imagen (Nombre/ruta del archivo,posicion en x,posicion en y, algo,ancho,formato de archivo)
        posicion x & y son respecto al de las coordenadas de la página*/
        $this->Image("../../imagenes/logoelementos/Escudo-240x300.png",20,10,24,30);
        /*se selecciona un tipo y tamaño de fuente (se ecuentran en la carpeta font)
        (Nombre,estilo,tamaño)*/
        $this->SetFont('Arial','B',10);
        $txt="Universidad Aut\xF3noma de Coahuila\n\nSistema se Infotecas Centrales\nAtenci\xF3n al Usuario\n\nReporte mensual de informaci\xF3n y paqueter\xEDa \n mes-a\xF1o";
        /*Se utiliza un objeto multicelda que nos permite hacer saltos de linea. 
        Por cada linea crea una celda (ancho,alto,string,borde[0 ó 1],alineacion)
        el cero en el ancho indica que ocupe el ancho disponible, no aplica en la altura*/
        $this->MultiCell(0,4.5,$txt,1,'C');
        $this->Ln(10);
    }

    function Footer(){
        /*SetY posiciona el Footer a una distancia (mm) del origen de la pagina.
        El signo (-) indica que empieza de abajo hacia arriba*/
        $this->SetY(-10);
        $this->SetFont('Arial','',8);
        $this->Cell(0,10,"SI-F-AUS-02  Revisi\xF3n 1 - " . date('d-m-y'),0,0);
    }

    function FancyTable($header,$data){
        $a=0;
        $b=0;
        $c=0;
        $this->SetFillColor(215,215,215);
        $w=array(80,40,40,0);
        $this->SetFont('Arial','B',10);
        for($i=0;$i<count($header);$i++){
            $this->Cell($w[$i],10,$header[$i],1,0,'C',true);}
        $this->Ln();
        $this->SetFont('Arial','',8);
        /*foreach($data as $row){
            $this->Cell($w[0],6,utf8_decode($row[0]),1,0,'L');
            $this->Cell($w[1],6,number_format($row[1]),1,0,'C');
            $this->Cell($w[2],6,number_format($row[2]),1,0,'C');
            $this->Cell(0,6,number_format($row[3]),1,0,'C');
            $a+=intval($row[1]);
            $b+=intval($row[2]);
            $c+=intval($row[3]);
            $this->Ln();
        }*/
        
        for($i = 0;$i < count($data);$i ++){
            $this->Cell($w[0],6,utf8_encode($data[$i]['NOMBRE_FACULTAD']),1,0,'L');
            $this->Cell($w[1],6,number_format($data[$i]['AM']),1,0,'C');
            $this->Cell($w[2],6,number_format($data[$i]['PM']),1,0,'C');
            $this->Cell(0,6,number_format($data[$i]['TOTAL']),1,0,'C');
            $this->Ln();
            $a+=intval($data[$i]['AM']);
            $b+=intval($data[$i]['PM']);
            $c+=intval($data[$i]['TOTAL']);
        }
        // L�nea de cierre
        //$this->Cell(array_sum($w),0,'',1);
        $this->Cell($w[0],10,'TOTAL',1,0,'C');
        $this->Cell($w[1],10,number_format($a),1,0,'C');
        $this->Cell($w[2],10,number_format($b),1,0,'C');
        $this->Cell(0,10,number_format($c),1,0,'C');
    }

    
}

/*PDF(horientacion,medida,formato del papel) 
Horientacion: P = portrait ; L = Landscape
Medida: pt,mm,cm,in (pt = punto; un punto es igual a 1/72 de pulgada, 0.35 mm aprox)
Formato: A4, A3, A5, Letter, Legal.
*/
$pdf = new PDF('P','mm','Letter');
$pdf->SetTitle('SI-F-AUS-02');
$header = array('ESCUELA/FACULTAD', "TURNO MATUTINO",'TURNO VESPERTINO','TOTAL');
//$data = $pdf->LoadData('registro.txt');
$pdf->AddPage();
$pdf->FancyTable($header,$data);
$pdf->Output('I',"SI-F-AUS-02.pdf");
$conn=null;
/*
$msg = is_readable($fn) ? $msg = 'File is readable'
 : $msg = 'File is not readable';
echo $msg . '<br/>';
 
$msg = is_writable($fn) ? $msg = 'File is writable'
 : $msg = 'File is not writable';
 
echo $msg . '<br/>';
 
$msg = is_executable($fn) ? $msg = 'File is executable'
   : $msg = 'File is not executable';
 
echo $msg . '<br/>';

-------------------------------------------------------

$fn = fopen('file2.txt',"a");
$d=strtotime("next month");
echo date("l - Y/m/d") . " " . $d;
$txt = date("l - Y/m/d") . "\n";
fwrite($fn,$txt);
fclose($fn);
*/
?>