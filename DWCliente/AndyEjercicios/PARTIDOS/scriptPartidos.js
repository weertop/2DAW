var ArrayPARTI = new Array();

window.onload = function() {
    
    alta=document.getElementById("alta");
    alta.onclick=darAlta;

    ganador=document.getElementById("ganador");
    ganador.onclick=fGanador;

    puntos=document.getElementById("puntos");
    puntos.onclick=fPuntos;

    clasificacion=document.getElementById("clasificacion");
    clasificacion.onclick=fClasificacion;



	resultadoEq1=document.getElementById("resultadoEq1");
    resultadoEq2=document.getElementById("resultadoEq2");
    numeroPartido=document.getElementById("numeroPartido");
    equipo1=document.getElementById("equipo1");
    equipo2=document.getElementById("equipo2");
    campo=document.getElementById("campo");
}  
	

function darAlta(){
    if( resultadoEq1.value!=("") && resultadoEq2.value!=("") && equipo1.value!=equipo2.value){

        numeroPartido.value=(ArrayPARTI.length)+1;
        var partido = new Partido(numeroPartido.value, equipo1.value, equipo2.value, campo.value, resultadoEq1.value, resultadoEq2.value);
        partido.añadirPartido(ArrayPARTI);

    }else{
        alert("Revisa si hay algun campo en blanco, o si juega un equipo contra otro distinto");
    }
}

function fGanador(){
    var nPart = numeroPartido.value;
    ArrayPARTI[nPart-1].mGanador();
}


function fPuntos(){
    var equipo=equipo1.value;
    alert( devpuntos(equipo)) ;

}

function devpuntos(equipo){

   
    var puntosEq = 0;
    for(var i=0 ; i<ArrayPARTI.length ; i++){
        if(ArrayPARTI[i].equipo1==equipo ){
            if(ArrayPARTI[i].resultadoEq1 > ArrayPARTI[i].resultadoEq2){
                puntosEq+=3;
            }else{
                if(ArrayPARTI[i].resultadoEq1==ArrayPARTI[i].resultadoEq2){
                    puntosEq+=1;
                }
            }
        }else{
            if(ArrayPARTI[i].equipo2==equipo ){
              if(ArrayPARTI[i].resultadoEq1 < ArrayPARTI[i].resultadoEq2){
                  puntosEq+=3;
              }else{
                    if(ArrayPARTI[i].resultadoEq1==ArrayPARTI[i].resultadoEq2){
                      puntosEq+=1;
                    }
                }
            }
        }
    }
    return puntosEq;
   
}

function fClasificacion(){
    var parrafo = document.createElement("p");
    document.getElementById("clasif").appendChild(parrafo);

    var select = equipo1;
    for (var i=0; i < select.length; i++) {
        var equipo = select.options[i].value;
        var puntitos = devpuntos(equipo);
  //creacion de parrafo para mostrar la clasificacion.

  var puntosClasi = document.createTextNode(equipo + ": " + puntitos + "pts ");
  parrafo.appendChild(puntosClasi);
    }

}



