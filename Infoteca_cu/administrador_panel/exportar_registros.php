<?php
session_start();

if($_SESSION['userid']=='' or $_SESSION['pswd']==''){
	die('Invalid');
}
?>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
	<link rel="stylesheet" href="../style_administrador_panel/style_administrador_panel.css">
	<link rel="stylesheet" href="../style_administrador_panel/css/fontello.css">
	<title>Generador de reportes</title>
</head>

<body>
	<div class="container">
		<div class="row">
			<div class="col-12 nav-superior d-flex justify-content-end align-items-center p-2">
				<a href="../back-end/php/cerrar_sesion.php" class=""><button class="btn btn-secondary">Cerrar Sesión</button></a>
			</div>
			<div class="col-12 p-0">
				<img src="../imagenes/background/bg-report.jpg" alt="" class="img-fluid img-responsive">
			</div>
			<div class="col-12 nav-inferior"></div>
		</div>



		<div class="row mt-3">
			<div class="col-12 col-md-3 col-lg-2 vertical-menu p-0 flex-column flex-md-row ">
				<a href="generar_reportes.php" class="text-center text-md-left active icon-doc"> Reporte SI-F-AUS-2</a>
				<a href="exportar_registros.php" class="text-center text-md-left icon-doc-text"> Exportar Registros</a>
			</div>

			<div class="col-12 col-md-9 col-lg-10 mt-md-0 mt-3">
				<div class="col-12 p-2 pl-md-2 pr-md-2 pb-md-2 pt-md-0">
					<form class="form-group" id="formFecha">

							<div class="row">
						    <div class="col p-1 p-md-0 ml-md-2">
									<div class="alert alert-info text-center" id="credesc"><span class="icon-calendar-plus-o rounded-circle text-center"></span>
										Elige una fecha inicial
									</div>
						      <input type="date" class="form-control" name="firstDate" id="firstDate">
						    </div>
						    <div class="col p-1 1 p-md-0 ml-md-4">
									<div class="alert alert-info text-center" id="credesc"><span class="icon-calendar-minus-o rounded-circle text-center"></span>
										Elige una fecha final
									</div>
						      <input type="date" class="form-control" name="lastDate" id="lastDate">
						    </div>
						  </div>

						<button type="button" class="d-flex justify-content-end btn btn-primary mt-3" onclick="ajax_registros()">Exportar Registros</button>
					</form>
					<div class="col-12 p-0 mt-3" id="cont-send">

					</div>
				</div>
			</div>

		</div>
	</div>

</body>
<script src="../jscript/ajax_registros.js"></script>
<script src="../js/jquery-3.3.1.min.js"></script>
<script src="../js/popper.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</body>

</html>
