function validacionCamposExternos() {

  var userName = document.querySelector("#username").value;
  var passWord = document.querySelector("#password").value;
  var contenedor = document.querySelector("#cont-send");

  var userNameTrim = userName.trim();
  var passWordTrim = passWord.trim();
  var userNameLength = userNameTrim.length;
  var passWordLength = passWordTrim.length;

  if (contenedor.hasChildNodes()) {
    while (contenedor.hasChildNodes()) {
      contenedor.removeChild(contenedor.firstChild);
    }
  }

  var errores = "";

  if (userNameLength == 0) {
    errores += "<span>No has ingresado un nombre de usuario.</span> <br/>";
  } else {

  }
  if (passWordLength == 0) {
    errores += "<span>No has ingresado una contraseña.</span> <br/>";
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

function ajax_externos(){
if(validacionCamposExternos() == true){

  var userName = document.querySelector("#username").value;
  var passWord = document.querySelector("#password").value;

            var USUARIO = {
              "name": userName,
              "pswd": passWord
            };
            var data = JSON.stringify(USUARIO);
            $.ajax({
              url: '../back-end/php/login.php',
              data: {x : data},
              dataType: 'json',
              type: 'POST',
              success: function(datos) {
                console.log(datos);
                var contenedor = document.querySelector("#cont-send");
                if (contenedor.hasChildNodes()) {
                  while (contenedor.hasChildNodes()) {
                  contenedor.removeChild(contenedor.firstChild);
                }
                }

                if(datos == '1'){
                  registroExitosoAdmin();
                }else if(datos == '3'){
                  registroExitosoRegistro();
                }else if(datos == '4'){
                  registroNoExitoso();
                }
              }

            });
          }
}


          function registroExitosoAdmin(){
            var contenedor = document.querySelector("#cont-send");
            var contenedorEnviado = document.createElement("div");
            contenedorEnviado.className = "mt-2 alert alert-success text-center";
            contenedorEnviado.innerHTML = "<span class='mt-2 rounded-circle text-center'>¡Has iniciado sesión con éxito!</span>";
            contenedor.appendChild(contenedorEnviado);

            var formID = document.getElementById("formLogin");
            formID.reset();


            setTimeout(function(){

              var contenedor = document.querySelector("#cont-send");
              if (contenedor.hasChildNodes()) {
                while (contenedor.hasChildNodes()) {
                  contenedor.removeChild(contenedor.firstChild);
                }
              }
              window.open("http://www.ingresoinfoteca.uadec.mx/administrador_panel/exportar_registros.php");
            },4000);
          }

          function registroExitosoRegistro(){
            var contenedor = document.querySelector("#cont-send");
            var contenedorEnviado = document.createElement("div");
            contenedorEnviado.className = "mt-2 alert alert-success text-center";
            contenedorEnviado.innerHTML = "<span class='rounded-circle text-center'>¡Has iniciado sesión con éxito!</span>";
            contenedor.appendChild(contenedorEnviado);

            var formID = document.getElementById("formLogin");
            formID.reset();


            setTimeout(function(){

              var contenedor = document.querySelector("#cont-send");
              if (contenedor.hasChildNodes()) {
                while (contenedor.hasChildNodes()) {
                  contenedor.removeChild(contenedor.firstChild);
                }
              }
              window.open("http://www.ingresoinfoteca.uadec.mx/registro/credencial_registro.php");
            },4000);
          }

          function registroNoExitoso(){
            var contenedor = document.querySelector("#cont-send");
            var contenedorErrores = document.createElement("div");
            contenedorErrores.className = "col-12 alerta-error p-2 mt-2";
            contenedorErrores.innerHTML = "El usuario o la contraseña son incorrectos";
            contenedor.appendChild(contenedorErrores);

            var formID = document.getElementById("formLogin");
            formID.reset();

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
