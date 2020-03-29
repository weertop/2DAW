    

window.onload =function(){
  var Asientos = new this.Array();
  var Asientos=  document.getElementById("comenzar").onclick=comenzar;
  document.getElementById("mostrar").onclick = mostrar;


}

function comenzar(){
    var Asientos = new Array();
    var Espectadores = new Array();
    var Peliculas = new Array();
    Peliculas = generarP(); // generamos un array de peliculas aleatorias
    Espectadores = generarEs(); // generamos los espectadores
    Npeli=Math.floor(Math.random()*Peliculas.length-1);
    var precio = generarPrecio();
    var sala = new Cine (Peliculas[Npeli].titulo,precio);// Generamos la sala de cine
    document.getElementById("cartel").textContent = " Titulo "+ Peliculas[Npeli].titulo +" con un precio de "+precio+" euros del director " + Peliculas[Npeli].director; 
    // Cambiamos el valor del h1 donde se vera el texto de arriba
    Asientos = generarAsientos(sala,Espectadores,Peliculas); // Generamos Los asientos
}
function generarP(){
    var Peliculas = Array();
    var Directores = ["Quentin Tarantino","Alfred Hitchcock","Steven Spielberg","Woody Allen","Charles Chaplin","Clint Eastwood","Pedro Almodovar"];
    var NumE =Math.floor(Math.random()*(30-1));
    for (var i = 0 ; i<NumE;i++){ 
        // Generamos de forma aleatoria un array de peliculas o cartelera
        var titulo = "(Pelicula " + (i+1) + ")";
        var edadM = Math.floor(Math.random()*(18)+3);
        var duracion = Math.floor(Math.random()*(180)+120);
        var Numdirector = Math.floor(Math.random()*(Directores.length));
        var director = Directores[Numdirector];
        var Peli = new Pelicula(titulo,duracion,edadM,director);
        Peliculas.push(Peli);
    }return Peliculas;
}
function generarEs(){
    var Espectadores = Array();
    var NumE = Math.floor(Math.random()*(50)+10);
    for (var i = 0 ; i<NumE;i++){
        // Generamos un Array de espectadores aleatorios
        var nombre = i +" E ";
        var edad = Math.floor(Math.random()*(70));
        var dinero = Math.floor(Math.random()*(40));
        var Espec = new Espectador(nombre,edad,dinero);
        Espectadores.push(Espec);
    }return Espectadores;
}
function generarPrecio(){
    var precio = Math.floor(Math.random()*(10)+3);
    return precio;
}
function generarAsientos(sala,Espectadores,Peliculas){
    var titulo = sala.pelicula;
    var precio = sala.precio
    var columnas = new Array();
    var filas = new Array();
    var Asientos = new Array();
    var Tabla = new Array();
    var Asiento;
    columnas = ["A","B","C","D","E","F","G","H"];
    filas = [1,2,3,4,5,6,7,8];
    for(var i = 0 ; i<Peliculas.length;i++){
        if (titulo == Peliculas[i].titulo){ 
           //Comprobamos que el titulo de la pelicula sea igual al titulo del array de peliculas y extraemos la edad minima de la pelicula
            edadM = Peliculas[i].edadM;
        }
    }
        var EspectadoresAptos = new Array();
        for(var i = 0; i<Espectadores.length;i++){
            if (Espectadores[i].edad >= edadM && Espectadores[i].dinero >= precio){
                // Creamos un array paralelo en el que añadimos los espectadores que son mayores de la edad minima y tenga el dinero necesario
                EspectadoresAptos.push(Espectadores[i]);
            }
        }
        for (var i = 0 ;i <EspectadoresAptos.length;i++){
            // Con el array de espectadores aptos generamos los asientos aleatoriamente generando un numero aleatorio para las columnas
            // y otro para las filas 
            var columR = Math.floor(Math.random()*columnas.length);
            var filaR =  Math.floor(Math.random()*filas.length);
            Asiento = columnas[columR]+""+filas[filaR]; //creacion del asiento
            
            for (var j = 0; j<Asientos.length;j++){
                // Este for regula si ese asiento ya esta ocupado
            if (Asiento == Asientos[j]){ // si el asiento esta ocupado se vuelve a generar otro asiento
                do{
                    columR = Math.floor(Math.random()*columnas.length);
                    filaR =  Math.floor(Math.random()*filas.length);
                    Asiento = columnas[columR]+""+filas[filaR];
                }while(Asiento == Asientos[j]) // Mientras que el asiento sea igual al ocupado seguira dentro del bucle
                j=0; // Establecemos j a 0 porque puede darse el caso de que se vuelva a ocupar otro asiento que ya estaba ocupado.
            }
        }
            Asientos.push(Asiento); // Cuando sale del bucle de comprobacion añade el asiento al array de asientos.
        }
        Asientos.sort(); 
        Tabla = creacionTabla(columnas,filas); // Generamos un array de asientos vacios para poder cambiar los asientos en tiempo de ejecucion 
        generarTabla(Asientos,Tabla); // cambiamos los asientos verdes disponibles y rojos ocupados en la tabla 
    
}
function generarTabla(Asientos,Tabla){
    for (var i = 0;i<Asientos.length;i++){
        // Este for recorre los asientos ocupados
        for (var j = 0; j<Tabla.length;j++){
        // Este for recorre la tabla entera
        if(Asientos[i]==Tabla[j]){
            // Si el asiento encuentra el hueco en la tabla lo pone rojo porque esta ocupado
            document.getElementById(Tabla[j]).style.color="red";
            i++; // Aumentamos el valor porque como esta ordenado una  vez que lo encuentra pasa al siguiente valor
        }else {
            // Sino lo pone verde porque esta disponible
            document.getElementById(Tabla[j]).style.color="green";
        }
}
    }
}

function creacionTabla(columnas,filas){
    var Tabla = new Array();
    for (var i = 0 ; i<columnas.length;i++){
        for(var j=0; j<filas.length;j++){
        var Asiento = columnas[i]+""+filas[j];
        Tabla.push(Asiento);
            }
    }return Tabla;
}


function mostrar(){
    document.getElementById("wrapper");
    wrapper = document.getElementById("wrapper").style.display="block";
}


