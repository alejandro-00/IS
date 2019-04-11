var inputEnter= document.getElementById("mat");

inputEnter.addEventListener("keydown", function(event) {
  if (event.keyCode === 13){
      event.preventDefault();
      validaCampos();
                            }
                                                       });


function validaCampos() {
    var matricula=document.getElementById("mat").value;
    var inputCampo = document.getElementById("mat").value;

    inputCampoTrim = inputCampo.trim();
    inputCampoSan = inputCampoTrim.length;

    var alerta= document.getElementById("alertanula");
    var cardAlumno = document.getElementById("contenedor-card-alumno");
    var contenedorCampos = document.getElementById("contenedor-campos-ingreso");

    var nombreEstudiante = document.getElementById("nombre-estudiante");
    var institutoEstudiante = document.getElementById("instituto-estudiante");
    var cursaEstudiante = document.getElementById("cursa-estudiante");
    var matriculaEstudiante = document.getElementById("matricula-estudiante");

    var myObj, x, txt = "";

    if (inputCampoSan == 0){
        inputNulo();
                        }else{
        var mydata = $();
        $.ajaxSetup({async: true});            
        $.ajax({
               url: '../../back-end/php/webservice.php',                        
               data: {
                     matricula: matricula
                     },
                     dataType: 'json',
                     type: 'GET', 
                     success: function(data){
                if(data == ''){
                    cardAlumno.style.display = "none";
                    alerta.style.display = "none";   
                    document.getElementById("mat").innerHTML = '';
                    alerta.innerHTML = "Ingresa una matrícula/número de expediente válido."; 
                    alerta.style.display = "initial";     
                }else{
                    alerta.style.display = "none";  
                    cardAlumno.style.display = "none";
                    contenedorCampos.style.display = "none";
                for (x in data){
                nombreEstudiante.innerHTML = data[x].NOMBRE + " " + data[x].PATERNO + " " + data[x].MATERNO;
                institutoEstudiante.innerHTML = data[x].N_E;
                cursaEstudiante.innerHTML = data[x].N_C;
                matriculaEstudiante.innerHTML = data[x].MATRICULA;
                               }
                cardAlumno.style.display = "initial";
                }            
            },
            error: function(xhr, textStatus, errorThrown) {
                document.getElementById("card-alumno").innerHTML=xhr.responseText;
                alert(xhr.responseText);
            }
        });    
        
    }
    
}


function inputNulo(){

var validacion = document.querySelector("#mat").value;
var alertanula = document.querySelector("#alertanula");
var validacionSanada = validacion.trim();
var validacionLength = validacionSanada.length;

    if(validacionLength == 0){
        alertanula.innerHTML = "Pasa tu credencial por el escáner o escribe tu matrícula/número de expendiente.";
        alertanula.style.display = "initial ";
                             }
                    }
