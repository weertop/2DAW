
var Partidos = new Array();
var np = 0;


window.onload = function() {

    var btnAlta = document.getElementById("alta");
    btnAlta.onclick = anadirPartido;

    var btnGanador = document.getElementById("ganador");
    btnGanador.onclick = ganadorF;

    var btnPuntos = document.getElementById("puntos");
    btnPuntos.onclick = calculaPuntos;

    var btnClasi = document.getElementById("clasi");
    btnClasi.onclick = clasificar;

}


//FUNCIONES

//ALTA
function anadirPartido() {
    var eq1 = document.getElementById("equipo1").value;
    var eq2 = document.getElementById("equipo2").value;
    var cam = document.getElementById("campo").value;
    var gol1 = document.getElementById("gol1").value;
    var gol2 = document.getElementById("gol2").value;

    //Comprobar que no hay valores vacios   
        if (eq1 != "" && eq2 != "" && cam != "" && gol1 != "" && gol2 != "") {
        //Comprobar que el quipo 1 no es igual que el equipo 2
        if (eq1 != eq2) { //Funciona
        
            np=Partidos.length+1;
                
            var partido = new Futbol(np, eq1, eq2, cam, gol1, gol2);
                console.log(partido);
                console.log(Partidos);
            partido.anadirObjeto(Partidos);

            
        }else {
            alert("No se puede repetir el mismo equipo.");
        }
        
    } else {
        alert("No puede haber campos vacíos, seleccione todos los datos.");
    }
}


//GANADOR
function ganadorF() {
    var nPart = document.getElementById("n_part").value;
    Partidos[nPart-1].ganadorC();
}


//PUNTOS
function calculaPuntos() {
    var equipo = document.getElementById("equipo1").value;
    
    var puntitos=puntos(equipo);       
    
    alert ("Los puntos de " + equipo + " son: " + puntitos); 

}



//CLASIFICACION
function puntos(equipo){
var puntos = 0;
    for (var i=0; i < Partidos.length; i++) {
        if (equipo == Partidos[i].equipo1) {
            if (Partidos[i].gol1 > Partidos[i].gol2) {
                puntos = puntos + 3;
            } else if (Partidos[i].gol1 == Partidos[i].gol2){
                puntos = puntos + 1;
            }
               
        }else if (equipo == Partidos[i].equipo2)  {
            if (Partidos[i].gol2 > Partidos[i].gol1) {
                puntos = puntos + 3;
            } else if (Partidos[i].gol1 == Partidos[i].gol2){
                puntos = puntos + 1;
            }
        }
    } 
    return puntos; 
}   


function clasificar() {
    var parrafo = document.createElement("p");
    document.getElementById("clasific").appendChild(parrafo);

    var select = document.getElementById("equipo1");
    for (var i=0; i < select.length; i++) {
        equipo = select.options[i].value;
        alert (equipo);
        puntitos = puntos(equipo);
  //creacion de parrafo para mostrar la clasificacion.

  var puntosClasi = document.createTextNode(equipo + ": " + puntitos);
 
  
  parrafo.appendChild(puntosClasi);
 
 
    }


}


