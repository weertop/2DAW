//Constructor
function Renfe(codigo, hsalida, hllegada, tipoSel, destinoSel, circulacionSel) {
      this.codigo = codigo;
      this.hsalida = hsalida;
      this.hllegada = hllegada;
      this.tipoSel = tipoSel;
      this.destino = destinoSel;
      this.circulacionSel = circulacionSel;
    }

//Metodo para añadir un objeto Renfe a un array
Renfe.prototype.addTren = function(arrayTrenes) {
    arrayTrenes.push(this);
}

//Metodo para borrar un objeto Renfe de un array
Renfe.prototype.deleteTren = function(arrayTrenes){
    for (var i=0 ; i<arrayTrenes.length ; i++){
        if (arrayTrenes[i].codigo==this.codigo){
            arrayTrenes.splice(i,1);
        }
    }
}

 