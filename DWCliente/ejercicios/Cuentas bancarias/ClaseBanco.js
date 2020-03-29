var cuentaBa = function(numc, nombre, saldo){
    this.numc = numc;
    this.nombre = nombre;
    this.saldo = saldo;
}

cuentaBa.prototype.addListaCuenta  = function(listacuenta){
    listacuenta.push(this);
}

cuentaBa.prototype.nombreBanco = 'Bankia';
cuentaBa.prototype.direccion = 'Av poblados 43';

cuentaBa.prototype.realizaMoviemiento = function(tipo, cantidad){
    if(tipo == "reintegro"){
        this.saldo -= cantidad;
    }else if(tipo == "ingreso"){
        this.saldo += cantidad;
    }
}