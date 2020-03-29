var modelosPeugeot = ["Elige modelo","Peugeot1","Peugeot2"];
var modelosSeat = ["Elige modelo","Seat1","Seat2"];
var modelosRenault = ["Elige modelo","Renault1","Renault2"];
var preciosPeugeot = [0,12500,13000];
var preciosSeat = [0,13500,14000];
var preciosRenault = [0,14500,15000];

window.onload = function() {

    imagen=document.getElementById("foto");

    marcas=document.getElementById("marcas");
    marcas.onchange=sacarMarcaElegida;
    modelos=document.getElementById("modelos");
    modelos.onchange=funcionCalcularPrecio;

    txtPrecio = document.getElementById("precio");

    colores=document.getElementsByName("colores");
    for( i=0 ; i<colores.length ; i++){
        colores[i].onclick=funcionCalcularPrecio;
    }

    extras=document.getElementsByName("extras");
    for( i=0 ; i<extras.length ; i++){
        extras[i].onclick=funcionCalcularPrecio;
    }
   

    function sacarMarcaElegida(){
	
        marcaElegida=this.options[this.selectedIndex].text;	
        ponerModelos(marcaElegida);
		}    
    }


    function ponerModelos(marcaElegida){

        switch(marcaElegida){
            case "Renault":
            modelos.options.length=0;
            for (i=0;i<modelosRenault.length;i++){
                opcion=document.createElement("option");
                opcion.text=modelosRenault[i];				
                modelos.appendChild(opcion);
            }	
            imagen.src="img/RenaultLogo.png";
			imagen.style="width:200px; height:200px";
            break;	

            case "Seat":
            modelos.options.length=0;
            for (i=0;i<modelosSeat.length;i++){
                opcion=document.createElement("option");
                opcion.text=modelosSeat[i];				
                modelos.appendChild(opcion);
            }
            imagen.src="img/SeatLogo.jpg";
			imagen.style="width:200px; height:200px";	
            break;

            case "Peugeot":
            modelos.options.length=0;
            for (i=0;i<modelosPeugeot.length;i++){
                opcion=document.createElement("option");
                opcion.text=modelosPeugeot[i];				
                modelos.appendChild(opcion);
            }	
            imagen.src="img/PeugeotLogo.jpg";
			imagen.style="width:200px; height:200px";
            break;
        }
    }    

        function funcionCalcularPrecio(){
            precio = 0;

            switch(marcaElegida){

                case "Renault":
                	precio=precio+preciosRenault[modelos.selectedIndex];
                break;	
    
                case "Seat":
                    precio=precio+preciosSeat[modelos.selectedIndex];
                break;
    
                case "Peugeot":
                    precio=precio+preciosPeugeot[modelos.selectedIndex];
                break;
            } 
            
            for( var i=0 ; i<colores.length ;i++){
                if(colores[i].checked){
                    switch(colores[i].value){
                    
                        case "rojo":
                            precio+=500;
                            break;
                        case "negro":
                            precio+=700;
                            break;
                        case "blanco":
                            break;
                    }            
                }
            }

            for( var i=0 ; i<extras.length ;i++){
                if(extras[i].checked){
                    switch(extras[i].value){
                    
                        case "s":
                            precio+=1000;
                            break;
                        case "n":
                            break;
                    }            
                }
            }
            txtPrecio.value=precio;
}

    


