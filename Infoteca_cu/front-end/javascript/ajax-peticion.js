//Evento que nos permite estar a la escucha del scaner.
var inputEnter = document.getElementById("mat");

var contenedorCamposPadre = document.getElementById("contenedor-campos-padre");
var contenedorCamposHijo = document.getElementById("contenedor-campos-hijo");
var contenedorGif = document.getElementById("gif-as");
var contenedor = document.querySelector("#cont-send");
var formID = document.querySelector("#formMatrIngr");
var credesc = document.getElementById("credesc");
var mat = document.getElementById("mat");

inputEnter.addEventListener("keydown", function(event) {
  if (event.keyCode === 13) {
    event.preventDefault();
    validaCampos();
  }
});

//Función para validar campos.

function validaCampos() {
  var matricula = document.getElementById("mat").value;

  matriculaTrim = matricula.trim();
  matriculaLength = matriculaTrim.length;

  var alerta = document.getElementById("alerta-error");


  //var gifas = document.getElementById("gif-as");

  //var nombreEstudiante = document.getElementById("nombre-estudiante");
  //var institutoEstudiante = document.getElementById("instituto-estudiante");
  //var cursaEstudiante = document.getElementById("cursa-estudiante");
  //var matriculaEstudiante = document.getElementById("matricula-estudiante");

  if (matriculaLength == 0) {
    inputNulo();
  } else {
    $.ajaxSetup({
      async: true
    });
    $.ajax({
      url: '../../back-end/php/webservice.php',
      data: {
        matricula: matriculaTrim
      },
      dataType: 'json',
      type: 'GET',
      success: function(data) {
        if (data == '') {
          var contenedor = document.querySelector("#cont-send");
          if (contenedor.hasChildNodes()) {
            while (contenedor.hasChildNodes()) {
            contenedor.removeChild(contenedor.firstChild);
          }
          }
          var errores = "";
          errores = "Ingresa una matrícula/número de expediente válido.";
          var contenedorErrores = document.createElement("div");
          contenedorErrores.className = "col-12 alerta-error p-2 mt-2";
          contenedorErrores.innerHTML = errores;
          contenedor.appendChild(contenedorErrores);
        } else {
          var contenedor = document.querySelector("#cont-send");
          if (contenedor.hasChildNodes()) {
            while (contenedor.hasChildNodes()) {
            contenedor.removeChild(contenedor.firstChild);
          }
          }
          contenedorCamposPadre.removeChild(contenedorCamposHijo);
          contenedorCamposPadre.removeChild(contenedorGif);
          var contenedorAbuelo = document.createElement("div");
          contenedorAbuelo.className = "col-md-8 col-12 p-md-2 p-2";
          var contenedorPadre = document.createElement("div");
          contenedorPadre.className = "col-12 registro-col-cen p-0 d-flex justify-content-center";
          var contenedorHijo = document.createElement("div");
          contenedorHijo.className = "col-md-12 col-12 p-md-2 p-2 mt-2 mt-md-0";
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

          var mat, na, ap, am, nc, nf;
          var nf2 = [];
          var nc2 = [];

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

          labelCarrera.setAttribute("for", "exampleFormControlSelect1");
          carrera.setAttribute("id", "exampleFormControlSelect1");
          labelCarrera.innerHTML = "<b>Carrera</b>";


          //labelInstituto.setAttribute("for","exampleFormControlSelect2");
          //instituto.setAttribute("id", "exampleFormControlSelect2");
          //labelInstituto.innerHTML = "<b>Instituto</b>";

          matricula.className = "";

          //instituto.className = "form-control";
          carrera.className = "form-control";

          nombre.innerHTML = "<b>Nombre: </b>" + data[0].NOMBRE + " " + data[0].PATERNO + " " + data[0].MATERNO;
          nombre.value = data[0].NOMBRE + " " + data[0].PATERNO + " " + data[0].MATERNO;
          na = data[0].NOMBRE;
          ap = data[0].PATERNO;
          am = data[0].MATERNO;

          matricula.innerHTML = "<b>Matrícula: </b>" + data[0].MATRICULA;
          mat = data[0].MATRICULA;

          contenedorCamposPadre.appendChild(contenedorAbuelo);
          contenedorCamposPadre.appendChild(contenedorGif);
          contenedorAbuelo.appendChild(contenedorPadre);
          contenedorPadre.appendChild(contenedorHijo);
          contenedorHijo.appendChild(form);
          document.getElementById("formgeneral").appendChild(formgroup);
          document.getElementById("formgroupcard").appendChild(nombre);
          document.getElementById("formgroupcard").appendChild(matricula);
          document.getElementById("formgroupcard").appendChild(labelCarrera);
          document.getElementById("formgroupcard").appendChild(carrera);
          //document.getElementById("formgroupcard").appendChild(labelInstituto);
          //document.getElementById("formgroupcard").appendChild(instituto);

          for (x in data) {
            var optionCarrera = document.createElement("option");
            //var optionInstituto = document.createElement("option");
            optionCarrera.setAttribute("id", "formgeneral" + x);
            // optionInstituto.setAttribute("id", "formgeneral"+x);
            optionCarrera.innerHTML = data[x].N_C + " - " + data[x].N_ESC;
            document.getElementById("exampleFormControlSelect1").appendChild(optionCarrera);
            //document.getElementById("exampleFormControlSelect1").appendChild(optionCarrera);
          }

          var input = carrera.value;
          fields = input.split(" - ");
          nf = fields[1];
          nc = fields[0];

          carrera.addEventListener("change", function() {
            var input2 = carrera.value;
            fields2 = input2.split(" - ");
            nf = fields2[1];
            nc = fields2[0];
          });

          var buttonValidar = document.createElement("button");
          buttonValidar.addEventListener("click", function() {
            registrarVisita(mat, na, ap, am, nc, nf);
            contenedorCamposPadre.removeChild(contenedorAbuelo);
            contenedorCamposPadre.appendChild(contenedorCamposHijo);
            contenedorCamposPadre.appendChild(contenedorGif);
            registroExitoso();

          });
          buttonValidar.className = "ml-2 btn btn-primary d-flex justify-content-end";
          buttonValidar.innerHTML = "Registrar";
          contenedorHijo.appendChild(buttonValidar);

        }
      },
      error: function(xhr, textStatus, errorThrown) {
        document.getElementById("card-alumno").innerHTML = xhr.responseText;
        alert(xhr.responseText);
      }
    });

  }
}


function inputNulo() {
  var contenedor = document.querySelector("#cont-send");
  if (contenedor.hasChildNodes()) {
    while (contenedor.hasChildNodes()) {
    contenedor.removeChild(contenedor.firstChild);
  }
  }
  var errores = "";
  errores = "Pasa tu credencial por el escáner o escribe tu matrícula/número de expediente.";
  var contenedorErrores = document.createElement("div");
  contenedorErrores.className = "col-12 alerta-error p-2 mt-2";
  contenedorErrores.innerHTML = errores;
  contenedor.appendChild(contenedorErrores);
}

function borrarTodo() {
  var cardAlumno = document.getElementById("contenedor-card-alumno");
  cardAlumno.removeChild(cardAlumno.childNodes);
}

function registroExitoso(){

  credesc.className = "alert alert-success text-center mt-5";
  credesc.innerHTML = "¡Has registrado tu visita con éxito!";
  formID.removeChild(mat);

  setInterval(function(){

    credesc.className = "alert alert-info text-center mt-5";
    credesc.innerHTML = "Pasa tu credencial por el escáner.";
     formID.appendChild(mat);
     formID.reset();
  },3000);
}



function registrarVisita(mat, na, ap, am, nc, nf) {
  var ll = null;
  var t = null;

  var matricula = mat;
  var nombre_alumno = na;
  var apellido_paterno = ap;
  var apellido_materno = am;
  var nombre_carrera = nc;
  var nombre_facultad = nf;
  var llave = ll;
  var turno = t;
  console.log(matricula);
  console.log(nombre_alumno);
  console.log(apellido_paterno);
  console.log(apellido_materno);
  console.log(nombre_carrera);
  console.log(nombre_facultad);
  var ALUMNO = {
    "MAT": matricula,
    "NA": nombre_alumno,
    "AP": apellido_paterno,
    "AM": apellido_materno,
    "NC": nombre_carrera,
    "NF": nombre_facultad,
    "LL": llave,
    "T": turno
  };
  var data = JSON.stringify(ALUMNO);
  console.log(ALUMNO);
  console.log(data);
  $.ajax({
    url: '../../back-end/php/wsregistro.php?x=',
    data:{ x: data},
    dataType: 'json',
    type: 'GET',
    success: function(data) {
      console.log(data)
    }
  });
}
