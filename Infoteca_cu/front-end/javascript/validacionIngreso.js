'use strict'

function validacionCamposExternos(){

var validacionNomb = document.querySelector("#nomb").value;
var validacionPate = document.querySelector("#pate").value;
var validacionMate = document.querySelector("#mate").value;
var validacionOcup = document.querySelector("#ocup").value;
var validacionTele = document.querySelector("#tele").value;
var validacionInst = document.querySelector("#inst").value;

var alertaNombre = document.querySelector("#alertaNombre");
var alertaPaterno = document.querySelector("#alertaPaterno");
var alertaMaterno = document.querySelector("#alertaMaterno");
var alertaOcupacion = document.querySelector("#alertaOcupacion");
var alertaTelefono = document.querySelector("#alertaTelefono");
var alertaInstituto = document.querySelector("#alertaInstituto");

var validacionNombTrim = validacionNomb.trim();
var validacionPateTrim = validacionPate.trim();
var validacionMateTrim = validacionMate.trim();
var validacionOcupTrim = validacionOcup.trim();
var validacionTeleTrim = validacionTele.trim();
var validacionInstTrim = validacionInst.trim();

var validacionNombLength = validacionNombTrim.length;
var validacionPateLength = validacionPateTrim.length;
var validacionMateLength = validacionMateTrim.length;
var validacionOcupLength = validacionOcupTrim.length;
var validacionTeleLength = validacionTeleTrim.length;
var validacionInstLength = validacionInstTrim.length;


	if(validacionNombLength == 0){
    alertaNombre.style.display = "none";
    alertaNombre.innerHTML = "No has ingresado un nombre. Ingresa tu nombre completo.";
    alertaNombre.style.display = "initial";
                               }else{
                               alertaNombre.style.display = "none";
                               }
  if(validacionPateLength == 0){
    alertaPaterno.style.display = "none";
    alertaPaterno.innerHTML = "No has ingresado un apellido paterno. Ingresa tu apellido paterno.";

    alertaPaterno.style.display = "initial";
                               }else{
                               alertaPaterno.style.display = "none";
                               }
  if(validacionMateLength == 0){
    alertaMaterno.style.display = "none";
    alertaMaterno.innerHTML = "No has ingresado un apellido materno. Ingresa tu apellido materno.";

    alertaMaterno.style.display = "initial";
                               }else{
                               alertaMaterno.style.display = "none";
                               }
    if(validacionOcupLength == 0){
    alertaOcupacion.style.display = "none";
    alertaOcupacion.innerHTML = "No has ingresado una ocupación. Ingresa tu ocupación.";

    alertaOcupacion.style.display = "initial";
                               }else{
                               alertaOcupacion.style.display = "none";
                               }
    if(validacionTeleLength == 0){

    alertaTelefono.innerHTML = "No has ingresado un teléfono. Ingresa tu télefono.";
    alertaTelefono.style.display = "none";
    alertaTelefono.style.display = "initial";
                               }else{
                               alertaTelefono.style.display = "none";
                               }
    if(validacionInstLength == 0){

    alertaInstituto.innerHTML = "No has ingresado un instituto. Ingresa tu instituto.";
    alertaInstituto.style.display = "none";
    alertaInstituto.style.display = "initial";
                               }else{
                               alertaInstituto.style.display = "none";
                               }
}
/*
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
                                         }*/