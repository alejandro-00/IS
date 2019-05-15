function validacionFechas() {

  var firstDate = document.querySelector("#firstDate").value;
  var lastDate = document.querySelector("#lastDate").value;

  var contenedor = document.querySelector("#cont-send");

  var firstDateLength = firstDate.length;
  var lastDateLength = lastDate.length;

  if (contenedor.hasChildNodes()) {
    while (contenedor.hasChildNodes()) {
      contenedor.removeChild(contenedor.firstChild);
    }
  }

  var errores = "";

  if (firstDateLength == 0) {
    errores += "<span>No has seleccionado la fecha de inicio.</span> <br/>";
  } else {

  }
  if (lastDateLength == 0) {
    errores += "<span>No has seleccionado la fecha final.</span> <br/>";
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

function ajax_registros(){
if(validacionFechas() == true){
  var firstDate = document.querySelector("#firstDate").value;
  var lastDate = document.querySelector("#lastDate").value;

  var fDate = firstDate;
  var lDate = lastDate;

            var FECHA = {
              "FID": fDate,
              "LAD": lDate,
            };
            var data = JSON.stringify(FECHA);
            $.ajax({
              url: '../back-end/php/exportar_registros.php?x=',
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
            contenedorEnviado.innerHTML = "<span class='icon-calendar-check-o rounded-circle text-center'></span> ¡Registros generados con éxito!";
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
