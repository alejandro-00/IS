/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function validaCampos () {
    var matricula=document.getElementById("matricula");
    if (matricula == '') {
        alert ('por favor capture la matrícuala o expediente');
        return;
    } else {
        //valida los datos captuados, utilizando un web service
        var mydata = $();
        $.ajaxSetup({async: false});            
        $.ajax({
            url: '../back-end/php/webservice.php',                        
            data: {
                matricula: matricula
            },
            dataType: 'json',
            type: 'GET', 
            success: function(data) 
            {   
                if (data == '1') {
                    alert ('! BIENVENIDO !');                   
                } else {
                    alert ('! usuario/contraseña inválidos !');             
                }            
            },
            error: function(xhr, textStatus, errorThrown) {
                alert(xhr.responseText);
            }
        });    
        
    }
    
}
