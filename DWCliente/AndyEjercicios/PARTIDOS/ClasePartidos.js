//Constructor
function Partido(nPartido, equipo1, equipo2, campo, resultadoEq1, resultadoEq2) {
      this.nPartido = nPartido;
      this.equipo1 = equipo1;
      this.equipo2 = equipo2;
      this.campo = campo;
      this.resultadoEq1 = resultadoEq1; 
      this.resultadoEq2 = resultadoEq2;
    }

//Metodo para añadir un objeto partido a un array
Partido.prototype.añadirPartido = function(arrayPARTI) {
encontrado=false;
    for(var i=0; i<arrayPARTI.length; i++){
        if(arrayPARTI[i].equipo1==this.equipo1 && arrayPARTI[i].equipo2==this.equipo2){
            encontrado=true;
        }
    }
    if(encontrado==true){
        alert("Este partido ya existe");
    }else{
        arrayPARTI.push(this);
        alert("Partido añadido");
    }
}


//Metodo para que nos devuelva el equipo ganador o empate si es el caso

Partido.prototype.mGanador = function(){
    if(this.resultadoEq1==this.resultadoEq2){
        alert("EMPATE");
    }else{
        if(this.resultadoEq1>this.resultadoEq2){
            alert(this.equipo1);
        }else{
            alert(this.equipo2);
        }
    }
}


 