'use strict'

function regresarContenedorAnterior(){
	var contenedor = document.querySelector("#contenedor-card-alumno");
	var contenedorIngeso = document.querySelector("#contenedor-campos-ingreso");
	var campoIngreso = document.querySelector("#formMatrIngr");

	var nombreEstudiante = document.getElementById("nombre-estudiante");
    var institutoEstudiante = document.getElementById("instituto-estudiante");
    var cursaEstudiante = document.getElementById("cursa-estudiante");
    var matriculaEstudiante = document.getElementById("matricula-estudiante");


    nombreEstudiante.innerHTML = "";
    institutoEstudiante.innerHTML = "";
    cursaEstudiante.innerHTML = "";
    matriculaEstudiante.innerHTML = "";
    campoIngreso.reset();
    
    contenedor.style.display = "none";
    contenedorIngeso.style.display = "initial";
}