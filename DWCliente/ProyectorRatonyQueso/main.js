var raton = {x:0,y:0};
var queso = {x:0,y:0};
var actual = {x:0,y:0};
var maxTabla = 3;
var minTabla = 0;

window.onload = function () {
    setInterval(muestraReloj, 1000);
    cargaImagen(maxTabla,minTabla);
    document.onkeydown = mueveRaton;
}

var cargaImagen = function (max, min) {
    do {
        var posicionX = Math.floor(Math.random() * (max - min + 1)) + min;
        var posicionY = Math.floor(Math.random() * (max - min + 1)) + min;
        var posicionXqueso = Math.floor(Math.random() * (max - min + 1)) + min;
        var posicionYqueso = Math.floor(Math.random() * (max - min + 1)) + min;
    }while(posicionX === posicionXqueso && posicionY === posicionYqueso);

    console.log('x ' + posicionX + ' y ' + posicionY);

    raton.x = posicionX;
    raton.y = posicionY;
    actual.x = posicionX;
    actual.y = posicionY;
    queso.x = posicionXqueso;
    queso.y = posicionYqueso;

    var imagenRaton = document.createElement("img");
    var imagenQueso = document.createElement("img");
    imagenRaton.id = "imgRaton";
    imagenRaton.src = "img/raton.png";
    imagenRaton.width = "100";
    imagenQueso.id = "imgQueso";
    imagenQueso.src = "img/queso.jpg";
    imagenQueso.width = "100";

    var table = document.getElementById('tabla');
    table.rows[posicionX].cells[posicionY].appendChild(imagenRaton);
    table.rows[posicionXqueso].cells[posicionYqueso].appendChild(imagenQueso);
}

var mueveRaton = function (elEvento) {
    var evento = window.event || elEvento;
    var imgRaton = document.getElementById('imgRaton');

    switch (evento.keyCode) {
        case 37 : console.log('hola pulso tecla izq');
                imgRaton.parentNode.removeChild(imgRaton);
                if(actual.y !== minTabla) {
                    actual.y -= 1;
                }
                cambiarImg();
                comprobacionJuego();
                    break;
        case 38 : console.log('hola pulso tecla arriba');
            imgRaton.parentNode.removeChild(imgRaton);
                if(actual.x !== minTabla) {
                    actual.x -= 1;
                }
                cambiarImg();
                comprobacionJuego();
                break;
        case 39 : console.log('hola pulso tecla der');
                imgRaton.parentNode.removeChild(imgRaton);
                if(actual.y !== maxTabla) {
                    actual.y += 1;
                }
                cambiarImg();
                comprobacionJuego();
                    break;
        case 40 : console.log('hola pulso tecla abajo');
                imgRaton.parentNode.removeChild(imgRaton);
                if(actual.x !== maxTabla) {
                    actual.x += 1;
                }
                cambiarImg();
                comprobacionJuego();
                    break;
    }
}

var cambiarImg = function (tecla) {
    var table = document.getElementById('tabla');
    var imagenRaton = document.createElement("img");
    imagenRaton.id = "imgRaton";
    imagenRaton.src = "img/raton.png";
    imagenRaton.width = "100";
    table.rows[actual.x].cells[actual.y].appendChild(imagenRaton);
}

var comprobacionJuego = function () {
    if(queso.x == actual.x && queso.y == actual.y){
        alert('Ganador!!!');
        location.reload();
    }
}

var reiniciar = function () {
    location.reload();
}

function muestraReloj() {
    var fechaHora = new Date();
    var horas = fechaHora.getHours();
    var minutos = fechaHora.getMinutes();
    var segundos = fechaHora.getSeconds();

    if(horas < 10) { horas = '0' + horas; }
    if(minutos < 10) { minutos = '0' + minutos; }
    if(segundos < 10) { segundos = '0' + segundos; }

    document.getElementById("hora").value = horas+':'+minutos+':'+segundos;
    document.getElementById("fecha").value = (fechaHora.getDate() + "/" + (fechaHora.getMonth() +1) + "/" + fechaHora.getFullYear());
}