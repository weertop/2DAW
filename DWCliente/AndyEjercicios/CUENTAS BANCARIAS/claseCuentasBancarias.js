function cuentaBancaria(ncuenta, titular, saldo){
    this.ncuenta = ncuenta;
    this.titular = titular;
    this.saldo = saldo;
}

cuentaBancaria.prototype.añadir = function (arrayCuentas){
    arrayCuentas.push(this);
}

cuentaBancaria.prototype.realizaMovimiento = function(movimiento, cantidad) {
    switch (movimiento) {
        case "reintegro":
            this.saldo = this.saldo - cantidad;
            break;
        case "ingreso":
            this.saldo = this.saldo + cantidad;
            break;
    }
}