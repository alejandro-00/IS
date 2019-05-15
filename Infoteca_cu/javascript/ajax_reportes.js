function validacionFechas() {

  var mes = document.querySelector("#mes").value;

  var contenedor = document.querySelector("#cont-send");

  var mesLength = mes.length;

  if (contenedor.hasChildNodes()) {
    while (contenedor.hasChildNodes()) {
      contenedor.removeChild(contenedor.firstChild);
    }
  }

  var errores = "";

  if (mesLength == 0) {
    errores += "<span>No has seleccionado ningún mes.</span> <br/>";
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

function ajax_reportes(){
if(validacionFechas() == true){
  var mes = document.querySelector("#mes").value;


  var mesPeticion = mes;

            var FECHA = {
              "MES": mesPeticion
            };
            var data = JSON.stringify(FECHA);
            $.ajax({
              url: '../back-end/php/generar_reporte.php?x=',
              data:{ x: data},
              dataType: 'json',
              type: 'GET',
              success: function(data) {
                var contenedor = document.querySelector("#cont-send");
                if (contenedor.hasChildNodes()) {
                  while (contenedor.hasChildNodes()) {
                  contenedor.removeChild(contenedor.firstChild);
                }
                }
                  registroExitoso();
              }
            });
          }
}



          function registroExitoso(){
            var contenedor = document.querySelector("#cont-send");
            var contenedorEnviado = document.createElement("div");
            contenedorEnviado.className = "alert alert-success text-center";
            contenedorEnviado.innerHTML = "<span class='icon-calendar-check-o rounded-circle text-center'></span> ¡El reporte fue generado con éxito!";
            contenedor.appendChild(contenedorEnviado);

            var formID = document.getElementById("formFecha");
            formID.reset();


            setTimeout(function(){

              var contenedor = document.querySelector("#cont-send");
              if (contenedor.hasChildNodes()) {
                while (contenedor.hasChildNodes()) {
                  contenedor.removeChild(contenedor.firstChild);
                }
              }
            },4000);
          }
