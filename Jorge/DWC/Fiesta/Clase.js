//Constructor
function Invitado(nombre, correo, telefono) {
    this.nombre = nombre;
    this.correo = correo;
    this.telefono = telefono;
    this.pagada = "NO";
  }

//Metodo para añadir un objeto a un array
Invitado.prototype.añadirInvitado = function(arrayFiesta) {
    arrayFiesta.push(this);
    alert("Invitado añadido");
}

//Metodo para poner a SI a la propiedad pagada del objeto
Invitado.prototype.PAGAR_FIESTA = function(){
    this.pagada = "SI";
    alert("pagada");
}

//Metodo que devuelve si ha pagado o no una persona la fiesta
Invitado.prototype.PAGA = function(){
    if(this.pagada=="SI"){
        return true;
    }else{
        return false;
    }
}



