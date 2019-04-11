'use strict'

	function borrarCamposMatricula(){
	var alertanula = document.querySelector("#alertanula");
	var alertamenor = document.querySelector("#alertamenor");
    alertamenor.style.display = "none";
    alertanula.style.display = "none";
 	document.getElementById("formMatrIngr").reset();
    				            }

	function borrarCamposMatriculaExpediente(){
	var alertanula = document.querySelector("#alertanula");
	alertanula.style.display = "none";
 	document.getElementById("formExpIngr").reset();
                                         } 


	function borrarCamposMatriculaExternos(){
	var alertaNula = document.querySelector("#alertaNula");
	alertaNula.style.display = "none";
	document.getElementById("formExtRegi").reset();
                                         }
