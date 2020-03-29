var arrayTrenes = new Array();
var indice;

window.onload = function() {
    codigo=document.getElementById("codigo");
    codigo.onchange=buscarTren;
    
    alta=document.getElementById("alta");
    alta.onclick=darAlta;

    baja=document.getElementById("baja");
    baja.onclick=darBaja;

	hsalida=document.getElementById("hsalida");
	hllegada=document.getElementById("hllegada");
	destino=document.getElementById("destino");
	circulaciones=document.getElementsByName("circulacion");
    tipos=document.getElementsByName("tipo");


}

function buscar() {
    indice = -1;
    for (var i=0 ; i<arrayTrenes.length ; i++){
        if (arrayTrenes[i].codigo==codigo.value){
            indice=i;
        }
    }
}

function buscarTren() {
    buscar();
    if(indice != -1){
            hsalida.value=arrayTrenes[indice].hsalida;
            hllegada.value=arrayTrenes[indice].hllegada;
            for (var i=0 ; i<tipos.length ; i++){
                if(tipos[i].value==arrayTrenes[indice].tipoSel){      
                    tipos[i].checked=true; 
                }
            }

            for (var i=0 ; i<circulaciones.length ; i++){
                if(circulaciones[i].value==arrayTrenes[indice].circulacionSel){      
                    circulaciones[i].checked=true; 
                }
            }
            destino.value=arrayTrenes[indice].destino;          
    }
}

function darAlta(){
    buscar();
    var tipoSel;
    var circulacionSel;
    if(indice == -1){
        for (var i=0 ; i<tipos.length ; i++){
            if(tipos[i].checked){             
                tipoSel=tipos[i].value;
            }
        }

        for (var i=0 ; i<circulaciones.length ; i++){
            if(circulaciones[i].checked){
                circulacionSel=circulaciones[i].value;
            }
        }

        var tren = new Renfe(codigo.value, hsalida.value, hllegada.value, tipoSel, destino.value, circulacionSel);
        tren.addTren(arrayTrenes);
        alert("Alta realizada");

    }else{
        alert("Este tren ya existe");
    }
}

function darBaja(){
    buscar();
    if(indice != -1){
        arrayTrenes[indice].deleteTren(arrayTrenes);
        alert("Baja realizada!");
    }else{
        alert("Este tren no existe!");
    }   
}
