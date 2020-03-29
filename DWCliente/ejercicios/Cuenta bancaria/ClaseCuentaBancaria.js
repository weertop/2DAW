function CuentaBancaria(id, nombre, saldo){
  this.id=id;
  this.nombre=nombre;
  this.saldo=saldo;
  this.listadoMovimientos=new Array();

CuentaBancaria.prototype.getNombre = function() {
    return this.nombre;
  }

  CuentaBancaria.prototype.getId = function() {
    return this.id;
  }

CuentaBancaria.prototype.consultarBalance = function(){
  return this.saldo;
}

CuentaBancaria.prototype.ingresarDinero = function(cantidadAIngresar){
  this.listadoMovimientos.push("+ "+cantidadAIngresar.toString()+"€  " + crearHora());
  this.saldo+=cantidadAIngresar;
}

CuentaBancaria.prototype.retirarDinero = function(cantidadARetirar) {
  this.listadoMovimientos.push("- "+cantidadARetirar.toString()+"€  " + crearHora());
  this.saldo-=cantidadARetirar;
}

function crearHora(){
  var laDate=new Date();
  var hora=laDate.getHours();
  var min=laDate.getMinutes();
  if (min<10) min= "0" + min;
  var dia=laDate.getDay()+2;
  if (dia<10) dia= "0" + dia;
  var mes=laDate.getMonth()+1;
  if (mes<10) mes= "0" + mes;
  var anio=laDate.getFullYear();
  var fechafinal=dia + "/" + mes + "/" + anio + " a las " + hora + ":" + min;
  return fechafinal;
}

}

