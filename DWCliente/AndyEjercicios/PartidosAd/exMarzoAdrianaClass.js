//CONSTRUCTOR
var Futbol = function (n_partido, equipo1, equipo2, campo, goles1, goles2) {
    this.n_partido = n_partido;
    this.equipo1 = equipo1;
    this.equipo2 = equipo2;
    this.campo = campo;
    this.goles1 = goles1;
    this.goles2 = goles2;
}


//METODOS

//ANADIR 
//Método ANADIR el objeto al array Partidos (con comprobaciones dentro del método antes de añadir al array)
Futbol.prototype.anadirObjeto = function(arrayPartidos) {
    var igual;
    for (var i = 0; i <arrayPartidos.length; i++) {
        //Comprobar que no hay una combinacion igual de equipo 1 y equipo 2
        if ((this.equipo1 == arrayPartidos[i].equipo1) && (this.equipo2 == arrayPartidos[i].equipo2)) {
           igual = true;
        } 
        
    }
    if (igual != true) {
    arrayPartidos.push(this);
    alert ("Partido anadido correctamente");
    } else {
        alert ("Ya existe este partido");
    }
    
}


//GANADOR
//Método GANADOR que nos devuelva el nombre del equipo ganador de un partido determinado, o la palabra EMPATE, en caso de empate.
Futbol.prototype.ganadorC = function() {
    if (this.goles1 == this.goles2) {
        alert ("Empate");
    } 
    else if (this.goles1 > this.goles2) {
        alert ("Equipo 1 ganador");
    }
    else if (this.goles1 < this.goles2) {
        alert ("Equipo 2 ganador");
    }

}