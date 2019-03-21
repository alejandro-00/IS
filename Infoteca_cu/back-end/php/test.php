<?php
include 'querys.php';
?>

<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
	<link rel="icon" type="image/png" href="../imagenes/icono-pagina/favicons.png">
	<link rel="stylesheet" type="text/css" href="../style/registro-credencial.css">
	<title>Registro con Matrícula - Infoteca CU</title>
    </head>
    <body>
        <div class="col-3 registro-contenedor mt-3">
            <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
                Fecha inicio: <input type="date" name="date_s" value="<?php echo $date_s;?>">
                Fecha final: <input type="date" id="date_f" name="date_f" value="<?php echo $date_f;?>">
                Matricula: <input type="text" id="id" name="id" value="<?php echo $id?>">
                <input type="submit" name="submit" value="Enviar">
            </form>
        </div>
        <table border="1">
            <tr><td>Matricula</td><td>Nombre</td><td>Apellido Pat</td><td>Apellido Mat</td><td>Sexo</td><td>Carrera</td><td>Escuela</td></tr>
            <?php
echo '<pre>';
print_r($results);
echo '</pre>';
                foreach($results as $key => $result) {
                    echo "<tr>";
                    echo "<td>";echo $result["MATRICULA"];echo "</td>";
                    echo "<td>";echo $result["NOMBRE"];echo "</td>";
                    echo "<td>";echo $result["PATERNO"];echo "</td>";
                    echo "<td>";echo $result["MATERNO"];echo "</td>";
                    echo "<td>";echo $result["SEXO"];echo "</td>";
                    echo "<td>";echo "<a href='localhost:81/front-end/registro/matricula-registro.html'>"; echo $result["N_C"]; echo "</a>"; echo "</td>";
                    echo "<td>";echo $result["N_ESC"];echo "</td>";
                    echo "</tr>";
                }?>
        </table>
    </body>
</html>