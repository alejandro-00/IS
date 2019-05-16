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
	<link rel="icon" type="image/png" href="../imagenes/icono-pagina/favicons.png">
	<link rel="stylesheet" type="text/css" href="../style_registro/style_registro.css">
	<link rel="stylesheet" href="../css/css/fontello.css">
	<title>Registro con Matrícula - Infoteca CU</title>
</head>

<body>
	<!-- Contenedor principal -->
	<div class="container-fluid">
		<div class="row container-header-sup d-flex justify-content-center align-items-center">
			<div class="log p-0"><a href="../back-end/php/cerrar_sesion.php"><span class="icon-logout p-0"></span></a></div>
			<div class="col-12 d-flex align-items-center justify-content-center">

				<span class="encabezado-infoteca">INFOTECA CAMPUS ARTEAGA</span>
				<!--	<table>
				<thead>
					<th></th>
				</thead>
				<tr>
					<td class="tabla-elementos"><a href="#"><img src="../imagenes/lang/es.png"></a></td>
					<td class="tabla-elementos"><a href="#"><img src="../imagenes/lang/en.png"></a></td>
				</tr>
			</table>
	-->
			</div>
		</div>

		<!-- Logotipo UAdeC situado en el nav -->
		<div class="row container-header-inf d-flex align-items-center">
			<div class="order-2 order-md-1 col-xs-12 col-sm-12 col-md-4 header-col-inf-1 d-flex justify-content-md-end justify-content-center">
				<a href="#" class="mr-md-5 mr-5 animacion-banderas"><img src="../imagenes/lang/es.png"></a>
				<a href="#" class="mr-md-5 mr-5 animacion-banderas"><img src="../imagenes/lang/en.png"></a>
				<div class="ml-md-0 mr-0 flex-md-row flex-column dropdown show mt-toggle">
					<a href="#" class="a-registro dropdown-toggle" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<a class="a-dropdownmenu dropdown-item" href="credencial_registro.php">Credencial</a>
						<a class="a-dropdownmenu dropdown-item" href="externos_registro.php">Externos</a>
					</div>
				</div>
			</div>

			<div class="order-1 order-md-2 col-12 col-sm-12 col-md-8 header-col-inf-2 d-flex justify-content-md-start justify-content-center align-items-center">
				<ul class="d-flex alignt-items-center">
					<li class="ml-md-5 mr-md-0 mr-4 mt-2 mt-md-3"><a href="credencial_registro.php"><img src="../imagenes/logotipo-nav/logo.png" id="logoid"></a></li>
				</ul>
			</div>
		</div>
		<!-- Sección de botones para el registro -->

		<div class="row mt-md-0 mt-0 p-md-3 p-2" id="contenedor-campos-padre">
			<div class="col-md-8 col-12 pt-md-2 pl-md-2 pr-md-1 pb-md-2 p-2" id="contenedor-campos-hijo">
				<div class="col-12 registro-col-cen p-0 d-flex justify-content-center">
					<div class="col-md-9 col-10 p-md-2 p-0">
						<form id="formMatrIngr" class="form-group">
							<div class="alert alert-info text-center mt-5" id="credesc"><span class="icon-credit-card rounded-circle text-center"></span>
								Pasa tu credencial por el escáner.
							</div>

							<input type="text" class="form-control form-control-sm text-center" name="mat" placeholder="Credencial" id="mat" maxlength="8" autocomplete="off">
						</form>
						<div class="col-12 p-0 text-center" id="cont-send">

						</div>

					</div>

				</div>
			</div>
			<!-- Aside -->
			<div class="col-md-4 col-12 pt-md-2 pl-md-4 pt-mb-2 p-0" id="gif-as">
				<img src="../imagenes/gif/gif-aside.gif" class="gif-cen-der img-fluid img-responsive">
			</div>
		</div>



		<!-- Footer -->
		<div class="row mt-0 container-footer-sup d-flex justify-content-center align-items-center p-0">
			<div class="col-12 d-flex justify-content-center">
				<span class="p-text-footer text-center">"EN EL BIEN, FINCAMOS EL SABER".</span>
			</div>
		</div>

		<div class="row container-footer-inf p-0 d-flex flex-md-column flex-row">
			<div class="p-2 footer-info col-xs-12 col-sm-12 col-md-4 d-flex justify-content-center align-items-center p-2">
				<table class="mt-2">
					<thead>
						<tr>
							<th scope="col" class="th-text-footer text-center icon-phone">CONTÁCTANOS</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row" class="tb-text-footer text-center">01(844)411-1400 | 411-1401</th>
						</tr>
					</tbody>
				</table>
				<!--<span class="texto-footer telefono-elemento" id="tel-element">01(844)411-1400 | 411-1401</span>-->
			</div>

			<div class="p-2 footer-info col-xs-12 col-sm-12 col-md-4 d-flex justify-content-center align-items-center">
				<table class="mt-2">
					<thead>
						<tr>
							<th scope="col" class="th-text-footer text-center icon-location">UBICACIÓN</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row" class="tb-text-footer text-center">Carretera 57 km. 13. Ciudad Universitaria. Arteaga, Coahuila.</th>
						</tr>
					</tbody>
				</table>
				<!--<span class="texto-footer ubicacion-elemento">Carreta 57 km. 13. Ciudad Universitaria. Arteaga, Coahuila.</span>-->
			</div>
			<div class="p-2 footer-info col-xs-12 col-sm-12 col-md-4 d-flex justify-content-center align-items-center">
				<table class="mt-2">
					<thead>
						<tr>
							<th scope="col" class="th-text-footer text-center icon-clock">HORARIO</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row" class="tb-text-footer text-center">Lunes a Viernes - 8:00 am a 9:00 pm</th>
						</tr>
					</tbody>
				</table>
				<!--<span class="texto-footer horario-elemento">L-V de 8:00 a.m. a 9:00 p.m.</span>-->
			</div>
		</div>

	</div>

	<script src="../jscript/ajax_credencial.js"></script>
	<script src="../js/jquery-3.3.1.min.js"></script>
	<script src="../js/popper.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script type="text/javascript">
		var mat = document.getElementById("mat");
		mat.focus();

		mat.addEventListener("focusout", funcionEjemplo);

		function funcionEjemplo(e) {
			e.preventDefault();
			document.getElementById("mat").focus();

		}
	</script>
</body>

</html>
