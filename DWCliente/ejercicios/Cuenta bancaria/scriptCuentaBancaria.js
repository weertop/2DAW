var cont=-1;
var misCuentas=new Array();

window.onload = function () {

    var botonAlta = document.getElementById("alta");
    var botonIngreso = document.getElementById("ingreso");
    var botonReintegro = document.getElementById("reintegro");
    var botonListadoM = document.getElementById("movimientos");
    var cuentaSeleccionada = document.getElementById("listaCuentas");
    var botonListarNeg = document.getElementById("negativo");
    botonAlta.onclick = darAlta;
    botonIngreso.onclick = ingresar;
    botonReintegro.onclick = reintegro;
    botonListadoM.onclick = listarMovimientos;
    cuentaSeleccionada.onchange = rellenaDatos;
    botonListarNeg.onclick = listarCuentasNeg;

}

function darAlta(){
    cont++;
    var nombre=document.getElementById("nombre").value;
    var saldo=parseInt(document.getElementById("saldo").value);
    var cuentaNueva=new CuentaBancaria(cont,nombre,saldo);
    misCuentas.push(cuentaNueva);
    crearElemento(cuentaNueva);
    borrarCampos();

}

function ingresar(){
   
    var seleccionado=document.getElementById("listaCuentas").selectedIndex;
    var ingreso= parseInt(prompt("Cantidad a ingresar:"));
    misCuentas[seleccionado].ingresarDinero(ingreso);
    actualizar(misCuentas[seleccionado].consultarBalance());
    
}

function reintegro(){
   
    var seleccionado=document.getElementById("listaCuentas").selectedIndex;
    var reintegro= parseInt(prompt("Cantidad a retirar:"));
    misCuentas[seleccionado].retirarDinero(reintegro);
    actualizar(misCuentas[seleccionado].consultarBalance());
        
    

}

function listarMovimientos(){
    var movimientos="";
    var seleccionado=document.getElementById("listaCuentas").selectedIndex;
    for (var i=0;i<misCuentas[seleccionado].listadoMovimientos.length;i++){
       movimientos += misCuentas[seleccionado].listadoMovimientos[i] + "\n";
    }
    alert(movimientos);
       
}

function rellenaDatos(){
    borrarCampos;
    var seleccionado=document.getElementById("listaCuentas").selectedIndex;
    var campo1=document.getElementById("nombre");
    var campo2=document.getElementById("saldo");
    campo1.value=misCuentas[seleccionado].getNombre();
    campo2.value=misCuentas[seleccionado].consultarBalance();

}

function listarCuentasNeg(){
    var misParrafos=document.getElementsByTagName("p");
    if (misParrafos.length>0){
        borrarNuevoP();
    }
    
    var cuentasNegativo=new Array();
    for (var i=0;i<misCuentas.length;i++){
        if (misCuentas[i].consultarBalance()<0){
            cuentasNegativo.push(misCuentas[i].getNombre()+" \n");
        }
    }
    var miDiv=document.getElementById("cuentasNegativas");
    var miTexto="CUENTAS CON SALDO NEGATIVO: \n" + cuentasNegativo;
    var parrafo=document.createElement("p");
    var contenido=document.createTextNode(miTexto);
    parrafo.appendChild(contenido);
    miDiv.appendChild(parrafo);

    

}

function borrarNuevoP(){
    var misParrafos=document.getElementsByTagName("p");
    var numParrafos=misParrafos.length-1;
    var miDiv=document.getElementById("cuentasNegativas");
    miDiv.removeChild(misParrafos[numParrafos]);
}
    


function crearElemento(cuenta){

        var nombre = cuenta.getNombre();
        var nodo = document.createElement('option');
        var textnode=document.createTextNode(nombre);
        nodo.appendChild(textnode);
        document.getElementById("listaCuentas").appendChild(nodo);
    }

function borrarCampos(){
    var nombre=document.getElementById("nombre");
    
    nombre.value="";
    saldo.value="";
}

function actualizar(nuevoSaldo){
    var saldo=document.getElementById("saldo");
    saldo.value=nuevoSaldo;
}

