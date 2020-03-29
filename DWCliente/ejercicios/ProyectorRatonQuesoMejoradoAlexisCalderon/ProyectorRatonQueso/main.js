var raton = {x:0,y:0};          //posicion inicial del raton se basa en posiciones X,Y similar a las damas chinas
var queso = {x:0,y:0};
var actual = {x:0,y:0};         //posicion actual del raton
var maxTabla = 5;               //max filas y columnas 6x6 tabla
var minTabla = 0;

var ratonOqueso = 0;            // para elegir si es el turno de poner queso o de mover el raton
var isInicioCrono = false;      //creo que no es ncesario, es para saber si inicia el crono aunque solo para con fin de juego
var minutos = 0;
var segundos = 0;
var milisegundos = 0;

window.onload = function () {
    cargaImagen('Queso');                   //primero carga img de queso con moviemineto
    document.onkeydown = mueveRaton;
}

//cargara imagen en la tabla segun el tipo que llegue ya sea Queso o Raton en posicion random
var cargaImagen = function (tipo) {
    var posicionX = Math.floor(Math.random() * (maxTabla - minTabla + 1)) + minTabla;
    var posicionY = Math.floor(Math.random() * (maxTabla - minTabla + 1)) + minTabla;

    if(tipo === 'Queso'){
        queso.x = posicionX;
        queso.y = posicionY;
    }else if(tipo === 'Raton'){
        raton.x = posicionX;
        raton.y = posicionY;
        actual.x = posicionX;
        actual.y = posicionY;
    }else{
        console.log('Error al crear image');
    }

    var imageT = document.createElement("img");

    //importante como se llama el tipo debe ser igual a la imagen
    imageT.id = 'img' + tipo;
    imageT.src = "img/" + tipo + ".png";
    imageT.width = "100";

    var table = document.getElementById('tabla');

    table.rows[posicionX].cells[posicionY].appendChild(imageT);
}

//funcion de movimiento recibe el evento onkeydown y mira si el intro o las flechas, al inicio por la variable ratonOqueso se inicia con la img de queso luego pasa a raton
var mueveRaton = function (elEvento) {
    var evento = window.event || elEvento;

    var imgQueso = document.getElementById('imgQueso');
    var imgRaton = document.getElementById('imgRaton');

    switch (evento.keyCode) {
        //si se pulsa intro escondemos la img queso, y cargamos la img raton, actualizamos la variable para que sepa que las siguiente onkeydown son para raton, e iniciamos el cronometro
        case 13: console.log('escondemos la imagen del queso');
                imgQueso.style.visibility = 'hidden';
                cargaImagen('Raton');
                ratonOqueso = 1;
                iniciarCrono();
                break;
         //similar en todas la flechas, verificamos si el movimiento es el raton o queso, se trata igual solo que se trabaja con la imagen que corresponda,
        case 37 : console.log('hola pulso tecla izq');
                if(ratonOqueso === 0){
                    imgQueso.parentNode.removeChild(imgQueso);
                    //mientras no se intente ir por el minimo de la tabla izquierda osea 0 reducimos en 1 la posicion 'y' del queso.
                    if(queso.y !== minTabla) {
                        queso.y -= 1;
                    }
                    //cambiamos de posicion la imagen segun el moviemiento que se haya realizado, tomando en cuenta los nuevos valores de actual x,y o queso x,y
                    cambiarImg('Queso');
                }
                if(ratonOqueso === 1){
                    imgRaton.parentNode.removeChild(imgRaton);
                    if (actual.y !== minTabla) {
                        actual.y -= 1;
                    }
                    cambiarImg('Raton');
                    comprobacionJuego();
                }
                    break;
        case 38 : console.log('hola pulso tecla arriba');
            if(ratonOqueso === 0){
                imgQueso.parentNode.removeChild(imgQueso);
                if(queso.x !== minTabla) {
                    queso.x -= 1;
                }
                cambiarImg('Queso');
            }else {
                imgRaton.parentNode.removeChild(imgRaton);
                if (actual.x !== minTabla) {
                    actual.x -= 1;
                }
                cambiarImg('Raton');
                comprobacionJuego();
            }
                break;
        case 39 : console.log('hola pulso tecla der');
            if(ratonOqueso === 0){
                imgQueso.parentNode.removeChild(imgQueso);
                if(queso.y !== maxTabla) {
                    queso.y += 1;
                }
                cambiarImg('Queso');
            }else {
                imgRaton.parentNode.removeChild(imgRaton);
                if (actual.y !== maxTabla) {
                    actual.y += 1;
                }
                cambiarImg('Raton');
                comprobacionJuego();
            }
                    break;
        case 40 : console.log('hola pulso tecla abajo');
            if(ratonOqueso === 0){
                imgQueso.parentNode.removeChild(imgQueso);
                if(queso.x !== maxTabla) {
                    queso.x += 1;
                }
                cambiarImg('Queso');
            }else {
                imgRaton.parentNode.removeChild(imgRaton);
                if (actual.x !== maxTabla) {
                    actual.x += 1;
                }
                cambiarImg('Raton');
                comprobacionJuego();
            }
                    break;
    }
}

//cambia la imagen segun el tipo similar a la anterior pero mas pequeña
var cambiarImg = function (tipo) {
    var table = document.getElementById('tabla');
    var imagenT= document.createElement("img");
    imagenT.id = "img" + tipo;
    imagenT.src = "img/" + tipo + ".png";
    imagenT.width = "100";
    if(tipo === 'Queso'){
        table.rows[queso.x].cells[queso.y].appendChild(imagenT);
    }
    if(tipo === 'Raton'){
        table.rows[actual.x].cells[actual.y].appendChild(imagenT);
    }

}

//compruba si el raton posicion actual es igual al queso posicion de queso y finaliza-reincia
var comprobacionJuego = function () {
    if(queso.x == actual.x && queso.y == actual.y){
        alert('Ganador!!!');
        reiniciar();
    }
}

//reincia el cronometro, lo actuliza en pantalla y recarga la pagina
var reiniciar = function () {
    clearInterval(cronometro);
    milisegundos = 0;
    minutos = 0;
    segundos = 0;
    document.getElementById("crono").value = minutos+':'+segundos + ':' + milisegundos;
    location.reload();
}

//inicia el crono
function iniciarCrono(){
    //establece el intervalo de refresco de una funcion en este caso el crono se actualiza cada miisegundo
    setInterval(cronometro, 100);
    isInicioCrono = true;
    cronometro();
}

//cronometro que va aumentando de 1 en 1 variables y las muestra por pantalla
function cronometro() {

    if(isInicioCrono === true){
        milisegundos += 1;       // set tenths of a second

        // set seconds
        if(milisegundos > 9) {
            milisegundos = 0;
            segundos += 1;
        }

        // set minutes
        if(segundos > 59) {
            segundos = 0;
            minutos += 1;
        }

        document.getElementById("crono").value = minutos+':'+segundos + ':' + milisegundos;
    }

}