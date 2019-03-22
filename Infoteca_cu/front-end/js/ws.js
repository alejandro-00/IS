function validaCampos() {
    var matricula=document.getElementById("m").value;
    var myObj, x, txt = "";
    if (matricula == '') {
        alert ('por favor capture la matrícula o expediente');
        return;
    } else {
        //valida los datos captuados, utilizando un web service
        var mydata = $();
        $.ajaxSetup({async: false});            
        $.ajax({
            url: '/back-end/php/webservice.php',                        
            data: {
                matricula: matricula
            },
            dataType: 'json',
            type: 'GET', 
            success: function(data) 
            {
                //myObj = JSON.parse(data);
                if (data == '') {
                    document.getElementById("d").innerHTML = '';
                    alert ('Estudiante no encontrado');        
                } else {
                    //myObj = JSON.parse(data);
                    //document.getElementById("d").innerHTML = data;
                    //myObj = JSON.parse(xhr.responseText);
                    txt+="<table border='1'><tr><td>Matricula</td><td>Nombre</td><td>Apellido Pat</td><td>Apellido Mat</td><td>Sexo</td><td>Carrera</td><td>Escuela</td></tr>";
                    for (x in data) {
                        txt += "<tr><td>" + data[x].MATRICULA + "</td><td>" + data[x].NOMBRE + "</td><td>" + data[x].PATERNO +"</td><td>" + data[x].MATERNO +"</td><td>" + data[x].SEXO+"</td><td>" + data[x].N_C +"</td><td>" + data[x].N_E +  "</td></tr>";
                    }
                    txt += "</table>";
                    document.getElementById("d").innerHTML = txt;          
                }            
            },
            error: function(xhr, textStatus, errorThrown) {
                document.getElementById("d").innerHTML=xhr.responseText;
                alert(xhr.responseText);
            }
        });    
        
    }
    
}
