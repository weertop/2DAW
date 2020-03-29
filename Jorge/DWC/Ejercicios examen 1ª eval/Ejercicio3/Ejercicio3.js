window.onload = function () {
	document.getElementById("lista1").onchange = rellenar;
	var opciones= document.getElementsByName("opciones");
	for(i=0;i<opciones.length;i++){
		opciones[i].onclick=controlOpciones;	
	}
}

function rellenar(){
	document.getElementById("lista2").length=0; //limpiamos la lista 2
	valor=document.getElementById(this.id).value;
	for(i = 1; i<=3;i++){
		var opcion =document.createElement("option");
		opcion.setAttribute("value" , valor+i);
		var contenido=document.createTextNode(valor+i);
		opcion.appendChild(contenido);
		document.getElementById("lista2").appendChild(opcion);
	}
}
	

function controlOpciones(){
	switch(document.getElementById(this.id).value){
		case 'negro':
			var fechaObj = new Date();
			var fecha = fechaObj.getDate() + "/"+(fechaObj.getMonth()+1)+"/"+ fechaObj.getFullYear();
			var hora = fechaObj.getHours();
			if(hora<10)hora="0"+hora;
			var minutos = fechaObj.getMinutes();
			if(minutos<10)minutos="0"+minutos;
			alert("La fecha actual es: " + fecha + "     Hora: " + hora+":"+minutos);
			break;
		case 'blanco':
			var seleccionada = document.getElementById("lista2").value;
			if(seleccionada==""){
				alert("No hay ninguna opcion seleccionada");
			}else{
				alert("La opcion seleccionada es " + seleccionada);
			}
			break;
		case 'marron':
			var boton =document.createElement("input");
			boton.setAttribute("type" , "button");
			boton.setAttribute("value" , "Hola");
			boton.onclick = function(){ alert('hola pepe')};
			document.getElementById("contenedor").appendChild(boton);
			
			break;
	}
}