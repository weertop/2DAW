var arrayFiesta = new Array();

window.onload = function() {

    añadir=document.getElementById("añadir");
    añadir.onclick=fAñadir;

    pagar=document.getElementById("pagar");
    pagar.onclick=fPagar;

    lista=document.getElementById("lista");
    lista.onclick=fListado;

    

	nombre=document.getElementById("nombre");
	correo=document.getElementById("correo");
    telefono=document.getElementById("telefono");
    
	nombres=document.getElementById("nombres");


}

function fAñadir(){
    if( nombre.value!=("") && correo.value!=("") && telefono.value!=("")){
        var invitado = new Invitado(nombre.value, correo.value, telefono.value);
        invitado.añadirInvitado(arrayFiesta);
        anadirselect();

    }else{
        alert("Revisa si hay algun campo en blanco");
    }
}

//FUNCIÓN PARA AÑADIR UNA OPCIÓN A LA SELECT
function anadirselect(){
	
    var option = document.createElement("option");
    var texto = document.createTextNode(nombre.value);
    option.appendChild(texto);
    nombres.appendChild(option);
}

function fPagar(){
    var selecionado=nombres.selectedIndex;
    arrayFiesta[selecionado].PAGAR_FIESTA();
   
}

function fListado(){

    parrafo = document.createElement("p");
    document.getElementById("listado").appendChild(parrafo);

    for (var i=0; i < arrayFiesta.length; i++) {
        if(arrayFiesta[i].PAGA()==true){
            var listadoPagados = document.createTextNode(arrayFiesta[i].nombre);
            parrafo.appendChild(listadoPagados);
        }
    }
}

