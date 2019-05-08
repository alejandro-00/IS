function validacionCamposExternos() {

  var validacionNomb = document.querySelector("#nomb").value;
  var validacionPate = document.querySelector("#pate").value;
  var validacionMate = document.querySelector("#mate").value;
  var validacionOcup = document.querySelector("#ocup").value;
  var validacionTele = document.querySelector("#tele").value;
  var validacionInst = document.querySelector("#inst").value;

  var contenedor = document.querySelector("#cont-send");

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

  if (contenedor.hasChildNodes()) {
    while (contenedor.hasChildNodes()) {
      contenedor.removeChild(contenedor.firstChild);
    }
  }

  var errores = "";

  if (validacionNombLength == 0) {
    errores += "<span>No has ingresado un nombre. Ingresa tu nombre completo. </span> <br/>";
  } else {

  }
  if (validacionPateLength == 0) {
    errores += "<span>No has ingresado un apellido paterno. Ingresa tu apellido paterno. </span> <br/>";
  } else {

  }

  if (validacionMateLength == 0) {
    errores += "<span>No has ingresado un apellido materno. Ingresa tu apellido materno. </span> <br/>";


  } else {

  }
  if (validacionOcupLength == 0) {
    errores += "<span>No has ingresado una ocupación. Ingresa tu ocupación. </span> <br/>";
  } else {

  }
  if (validacionTeleLength == 0) {
    errores += "<span>No has ingresado un teléfono. Ingresa tu télefono. </span> <br/>";

  } else {

  }
  if (validacionInstLength == 0) {
    errores += "<span>No has ingresado un instituto. Ingresa tu instituto. </span> <br/>";

  } else {

  }

  if (errores != "") {
    var contenedorErrores = document.createElement("div");
    contenedorErrores.className = "col-12 alerta-error p-2 mt-2";
    contenedorErrores.innerHTML = errores;
    contenedor.appendChild(contenedorErrores);
  } else {
    return true;
  }
}

function borrarCamposMatriculaExternos() {
  var contenedor = document.querySelector("#cont-send");
  if (contenedor.hasChildNodes()) {
    while (contenedor.hasChildNodes()) {
      contenedor.removeChild(contenedor.firstChild);
    }
  }
  document.getElementById("formExtRegi").reset();
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
