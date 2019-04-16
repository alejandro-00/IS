<?php
require('fpdf.php');
//include 'connection.php';

//se crea la clase PDF eredando FPDF para editar el Header y el Footer
class PDf extends FPDF
{
    //funcion que crea la cabecera del archivo
    function Header(){
        /*se inserta una imagen (Nombre/ruta del archivo,posicion en x,posicion en y, algo,ancho,formato de archivo)
        posicion x & y son respecto al de las coordenadas de la página*/
        $this->Image('Escudo-240x300.png',10,8,24,30);
        /*se selecciona un tipo y tamaño de fuente (se ecuentran en la carpeta font)
        (Nombre,estilo,tamaño)*/
        $this->SetFont('Arial','',8);
        $txt="Universidad Aau\xF3noma de Coahuila\nSistema se Infotecas Centrales\nAtenci\xF3n al Usuario\n\nReporte mensual de informaci\xF3n y paqueter\xEDa \n mes-a\xF1o";
        /*Se utiliza un objeto multicelda que nos permite hacer saltos de linea. 
        Por cada linea crea una celda (ancho,alto,string,borde[0 ó 1],alineacion)
        el cero en el ancho indica que ocupe el ancho disponible, no aplica en la altura*/
        $this->MultiCell(0,4.5,$txt,1,'C');
    }

    function Footer(){
        /*SetY posiciona el Footer a una distancia (mm) del origen de la pagina.
        El signo (-) indica que empieza de abajo hacia arriba*/
        $this->SetY(-10);
        $this->SetFont('Arial','',8);
        $this->Cell(0,10,"SI-F-AUS-02  Revisi\xF3n 1 - " . date('d-m-y'),0,0);
    }
}

/*PDF(horientacion,medida,formato del papel) 
Horientacion: P = portrait ; L = Landscape
Medida: pt,mm,cm,in (pt = punto; un punto es igual a 1/72 de pulgada, 0.35 mm aprox)
Formato: A4, A3, A5, Letter, Legal.
*/
$pdf = new PDF('P','mm','a4');


$pdf->SetTitle("Reporte 1");
$pdf->AddPage();
$pdf->Output();

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