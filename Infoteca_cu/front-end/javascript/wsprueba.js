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
    var gifas = document.getElementById("gif-as");

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

          
              //  var card = document.createElement("div");
               // var cardbody= document.createElement("div");
               // if(x >= 3){
                 // cardAlumno.className = "col-12 contenedor-cards-t2 mr-3 ml-5 p-0"
                 // gifas.style.display = "none";
                //  card.className = "card col-3 card-pruebas-123";
                //}else{
                //  cardAlumno.className = "col-8 p-3 d-flex contenedor-cards-t mr-3 ml-5 align-items-center justify-content-center"
               //   card.className = "card col-5 m-1 card-pruebas-123"
               // }
                

                
               // card.setAttribute("id", "card-normal"+x);
                
               // cardbody.className = "card-body p-3";
               // cardbody.setAttribute("id", "cardbody-normal"+x);

                 var form = document.createElement("form");
                 var formgroup = document.createElement("div");
                 var nombre = document.createElement("p");
                 var labelCarrera = document.createElement("label");
                 //var labelInstituto = document.createElement("label");
                 //var instituto = document.createElement("select");
                 var carrera = document.createElement("select");
                 var matricula = document.createElement("p");

                form.className = "p-2 d-flex align-items-center justify-content-center"
                form.setAttribute("id", "formgeneral");
                 formgroup.setAttribute("id", "formgroupcard");

                 nombre.className = "card-text";
                 formgroup.className = "form-group p-2 card col-12"

                labelCarrera.setAttribute("for","exampleFormControlSelect1");
                carrera.setAttribute("id", "exampleFormControlSelect1");
                labelCarrera.innerHTML = "<b>Carrera</b>";


                //labelInstituto.setAttribute("for","exampleFormControlSelect2");
                //instituto.setAttribute("id", "exampleFormControlSelect2");
                //labelInstituto.innerHTML = "<b>Instituto</b>";

                 matricula.className = "";
                //instituto.className = "form-control";
                 carrera.className = "form-control";

                 nombre.innerHTML = "<b>Nombre: </b>" + data[0].NOMBRE + " " + data[0].PATERNO + " " + data[0].MATERNO;
                 matricula.innerHTML = "<b>Matrícula: </b>" + data[0].MATRICULA;
                 

                document.getElementById("contenedor-card-alumno").appendChild(form);
                document.getElementById("formgeneral").appendChild(formgroup);
                document.getElementById("formgroupcard").appendChild(nombre);
                document.getElementById("formgroupcard").appendChild(matricula);
                document.getElementById("formgroupcard").appendChild(labelCarrera);
                document.getElementById("formgroupcard").appendChild(carrera);
                //document.getElementById("formgroupcard").appendChild(labelInstituto);
                //document.getElementById("formgroupcard").appendChild(instituto);
                for (x in data){
                var optionCarrera = document.createElement("option");
                //var optionInstituto = document.createElement("option");
                optionCarrera.setAttribute("id", "formgeneral"+x);
                // optionInstituto.setAttribute("id", "formgeneral"+x);
                optionCarrera.innerHTML = data[x].N_C +" - "+ data[x].N_ESC;
                
               
                 document.getElementById("exampleFormControlSelect1").appendChild(optionCarrera);
                //document.getElementById("exampleFormControlSelect1").appendChild(optionCarrera);
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
                        function borrarTodo(){
      var cardAlumno = document.getElementById("contenedor-card-alumno");
      cardAlumno.removeChild(cardAlumno.childNodes); 
    }