'use strict'

function cambiarVisibilidadMatricula(){

var validacion = document.querySelector("#mat").value;
var alertanula = document.querySelector("#alertanula");
var alertamenor = document.querySelector("#alertamenor");



var validacionSanada = validacion.trim();
var validacionLength = validacionSanada.length;

	if(validacionLength == 0){
		alertamenor.style.display = "none";
        alertanula.innerHTML = "No has ingresado una matrícula. Ingresa una matrícula válida de 8 caracteres.";
        alertanula.style.display = "initial ";
    				         }else if(validacionLength == 1){
    				      	  alertanula.style.display = "none";
                              alertamenor.innerHTML = "Ingresaste una matrícula de " + validacionLength+
                              " carácter. <br><br> Ingresa una matrícula válida de 8 caracteres."
    				      	  alertamenor.style.display = "initial"
                              }else if(validacionLength >= 2 && validacionLength <= 7){
                              alertanula.style.display = "none";
                              alertamenor.innerHTML = "Ingresaste una matrícula de " + validacionLength+
                              " caracteres. <br><br> Ingresa una matrícula válida de 8 caracteres."; 
                              alertamenor.style.display = "initial"
    				          }else if(validacionLength >= 9){
                              alertanula.style.display = "none";
                              alertamenor.innerHTML = "Ingresaste una matrícula de " + validacionLength+
                              " caracteres. Ingresa una matrícula válida de 8 caracteres."
                              alertamenor.style.display = "initial"
                              }
                              else{
    				      	  alertamenor.style.display = "none";
    				      	  alertanula.style.display = "none";
    				              }
    				            }

  function cambiarVisibilidadExpediente(){

var validacion = document.querySelector("#expe").value;
var alertanula = document.querySelector("#alertanula");

var validacionSanada = validacion.trim();
var validacionLength = validacionSanada.length;

  if(validacionLength == 0){ 
        alertanula.innerHTML = "No has ingresado un número de expediente.";
        alertanula.style.display = "initial ";
                        }else{
                          alertanula.style.display = "none";    
                             } 
                                         } 

  function cambiarVisibilidadExternos(){

var validacionOcup = document.querySelector("#ocup").value;
var validacionTele = document.querySelector("#tele").value;
var validacionInst = document.querySelector("#inst").value;

var alertaNula = document.querySelector("#alertaNula");

var validacionOcup = validacionOcup.trim();
var validacionTele = validacionTele.trim();
var validacionInst = validacionInst.trim();

var validacionOcup = validacionOcup.length;
var validacionTele = validacionTele.length;
var validacionInst = validacionInst.length;

var Campos = "";

  if(validacionOcup == 0){ 
      Campos += "No has ingresado una ocupación.<br/><br/>";
      console.log(Campos);
  }
  if(validacionTele == 0){
  Campos += "No has ingresado un número de teléfono.<br/><br/>";
  console.log(Campos);
                         }
  if(validacionInst == 0){
  Campos += "No has ingresado un instituto.";
  console.log(Campos);
                         }
  if(Campos == ""){

  }else{
  alertaNula.innerHTML = Campos;
  alertaNula.style.display = "initial ";
       }
                                         }