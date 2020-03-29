var Cuentas = new Array();

window.onload = function() {
	  
    alta = document.getElementById("alta");
    alta.onclick = fAlta;

    ingreso = document.getElementById("ingreso");
    ingreso.onclick = fIngreso;

    reintegro = document.getElementById("reintegro");
    reintegro.onclick = fReintegro;

    negativo = document.getElementById("negativo");
    negativo.onclick = listarCuentasNegativas;

    nombre = document.getElementById("nombre");
    saldo = document.getElementById("saldo");
    listaCuentas = document.getElementById("listaCuentas");
    cuentasNegativas = document.getElementById("cuentasNegativas");
}

//FUNCIÓN QUE DEVUELVE EL OBJETO CuentaBancaria SELECCIONADO DE LA LISTA
function cuentaSeleccionada() {

    var indice = listaCuentas.selectedIndex;
    var cuentaSel = Cuentas[indice];

    return cuentaSel;
}

//FUNCIÓN QUE MUESTRA LOS DATOS DE LA CUENTA SELECCIONADA DE LA LISTA
function mostrarCuenta() {
    var cuenta = cuentaSeleccionada();
    nombre.value = cuenta.titular;
    saldo.value = cuenta.saldo;
}

function fAlta(){
        var num = Cuentas.length + 1 ;

        var cuenta = new cuentaBancaria(num, nombre.value, parseInt(saldo.value)); 	
        cuenta.añadir(Cuentas);
        
        var option=document.createElement("option");
        var texto=document.createTextNode("Cuenta nº"+num);
        option.appendChild(texto);
        listaCuentas.appendChild(option);

        alert("Nueva cuenta bancaria añadida correctamente.");
    
}

function fIngreso(){

    var cantidad = parseInt(prompt("Introduzca la cantidad que quiere ingresar:"));
    if (isNaN(cantidad)) {
        alert("La cantidad introducida debe ser un número.");
    } else {
        var cuenta = cuentaSeleccionada();
        cuenta.realizaMovimiento("ingreso", cantidad);
        
        mostrarCuenta();
    }
}

function fReintegro(){
    var cantidad = parseInt(prompt("Introduzca la cantidad que quiere retirar:"));
    if (isNaN(cantidad)) {
        alert("La cantidad introducida debe ser un número.");
    } else {
        var cuenta = cuentaSeleccionada();
        cuenta.realizaMovimiento("reintegro", cantidad);
        
        mostrarCuenta();
    }
}

function listarCuentasNegativas() {

    var numNegativas = 0;
    for (i = 0; i < Cuentas.length; i++) {
        if (Cuentas[i].saldo < 0) {
            numNegativas++;
            var parrafo = document.createElement("p");
            var texto = document.createTextNode("Cuenta nº: "+Cuentas[i].ncuenta + " | Titular: "+Cuentas[i].titular + " | Saldo: "+Cuentas[i].saldo);
            parrafo.appendChild(texto);
            cuentasNegativas.appendChild(parrafo);
        }
    }

    if (numNegativas == 0) {
        var parrafo = document.createElement("p");
        var texto = document.createTextNode("No existen cuentas con saldo negativo a fecha de hoy.");
        parrafo.appendChild(texto);
        cuentasNegativas.appendChild(parrafo);
    }
}




