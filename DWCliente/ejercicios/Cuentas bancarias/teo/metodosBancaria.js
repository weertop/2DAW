var listadoCuentas = new Array();
var cuenta1 = new cuentaBa(0,"pepe",23);
var cuenta2 = new cuentaBa(1,"juan",54);
var i=3;

window.onload = function () {
    cuenta1.addListaCuenta(listadoCuentas);
    cuenta2.addListaCuenta(listadoCuentas);

    for(var i=0; i < listadoCuentas.length; i++){
        aniadirSelect(i);
    }

    document.getElementById("listaCuentas").onclick = mostrarInfo;
    //escogido.onclick = mostrarInfo();

    var botonAlta = document.getElementById("alta");
    botonAlta.onclick = botonAltaFuncion;
    var botonIngreso = document.getElementById("ingreso");
    botonIngreso.onclick = botonIngresoFuncion;
    var botonReintegro = document.getElementById("reintegro");
    botonReintegro.onclick = botonReintegroFuncion;
    var botonSaldoNegativo = document.getElementById("negativo");
    botonSaldoNegativo.onclick = botonSaldoNegativoFuncion;
}

var aniadirSelect = function(i){
    var option = document.createElement("option");
    var texto = document.createTextNode('Cuenta N.' + listadoCuentas[i].numCuenta);
    option.appendChild(texto);
    option.value = listadoCuentas[i].numCuenta;
    document.getElementById("listaCuentas").appendChild(option);
}

var mostrarInfo = function(){
    //seleccionar cuenta
    var select = document.getElementById("listaCuentas");
    var selectM = select.selectedIndex;
    var cuentaSeleccionada = listadoCuentas[selectM];

    //mostrar info
    document.getElementById("nombre").value = cuentaSeleccionada.nombre;
    document.getElementById("saldo").value = cuentaSeleccionada.saldo;
}

var botonAltaFuncion = function () {
    var nombre = document.getElementById("nombre").value;
    var saldo = parseInt(document.getElementById("saldo").value);

    if (isNaN(saldo)) {
        alert("Debe ser un numero.");
    } else {
        var i = listadoCuentas.length;
        var cuentaNueva = new cuentaBa(i+1, nombre, saldo);
        cuentaNueva.addListaCuenta(listadoCuentas);
        aniadirSelect(i);
        alert("Se añadio.");
    }
}

var botonIngresoFuncion = function () {
    var nuevoSaldo = parseInt(prompt("Introduzca la cantidad que quiere ingresar:"));
    if (isNaN(nuevoSaldo)) {
        alert("Debe ser un numero");
    } else {
        var select = document.getElementById("listaCuentas");
        var selectM = select.selectedIndex;
        var cuentaSeleccionada = listadoCuentas[selectM];
        cuentaSeleccionada.realizaMoviemiento("ingreso", nuevoSaldo);

        mostrarInfo();
    }
}

var botonReintegroFuncion = function () {
    var cantidad = parseInt(prompt("Introduzca cantidad retirar:"));
    if (isNaN(cantidad)) {
        alert("Debe ser un numero.");
    } else {
        var select = document.getElementById("listaCuentas");
        var selectM = select.selectedIndex;
        var cuentaSeleccionada = listadoCuentas[selectM];
        cuentaSeleccionada.realizaMoviemiento("reintegro", cantidad);

        mostrarInfo();
    }
}

var botonSaldoNegativoFuncion = function () {

    var p = document.createElement("p");
    var t = document.createTextNode(listadoCuentas[0].nombreBanco);
    p.appendChild(t);
    document.body.appendChild(p);

    var p = document.createElement("p");
    var t = document.createTextNode(listadoCuentas[0].direccion);
    p.appendChild(t);
    document.body.appendChild(p);

    for(var i=0; i<listadoCuentas.length;i++){
        if(listadoCuentas[i].saldo < 0){
            var p = document.createElement("p");
            var n = document.createTextNode(listadoCuentas[i].numc);
            var t = document.createTextNode(listadoCuentas[i].nombre);
            var s = document.createTextNode(listadoCuentas[i].saldo);
            p.appendChild(n);
            p.appendChild(t);
            p.appendChild(s);
            document.body.appendChild(p);
        }
    }
}

