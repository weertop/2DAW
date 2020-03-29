var arrayAlumnos = new Array();

window.onload = function() {

    alta = document.getElementById("alta");
    alta.onclick = fAlta;

    ponerNotas = document.getElementById("ponerNotas");
    ponerNotas.onclick = fponerNotas;

    media = document.getElementById("media");
    media.onclick = fsacarMedia;

    aprobados = document.getElementById("aprobados");
    aprobados.onclick = fAprobados;

    nombres = document.getElementById("nombres");
    nAlumno = document.getElementById("nAlumno");
    nombre = document.getElementById("nombre");
    notaMates = document.getElementById("notaMates");
    notaLengua = document.getElementById("notaLengua");
    notaIngles = document.getElementById("notaIngles");
    listaAprobados = document.getElementById("listaAprobados");

}    
//FUNCION PARA DAR DE ALTA UN ALUMNO
function fAlta(){
    if( nombre.value != ""){
    var num = arrayAlumnos.length + 1 ;
    nAlumno.value = num ;
    var alumno1 = new alumno(num, nombre.value); 	
    alumno1.añadir(arrayAlumnos);
    
    //AÑADIMOS EL NOMBRE A LA SELECT
    var option=document.createElement("option");
    var texto=document.createTextNode(nombre.value);
    option.appendChild(texto);
    nombres.appendChild(option);

    alert("Nuevo alumno añadido!");

    }else{
        alert("No puede dejar el campo nombre vacio!");
    }
}

//FUNCION PARA ASIGNAR NOTAS A UN ALUMNO DE LA SELECT
function fponerNotas(){
    //COMPRABAMOS QUE EL VALOR QUE NOS PASA SEA UN NUMERO
    if( isNaN(notaMates.value) && isNaN(notaLengua.value) && isNaN(notaIngles.value) ){
        alert("Debe poner en las notas, NUMEROS!");
    }else{
        var seleccionado = nombres.selectedIndex;
        arrayAlumnos[seleccionado].ponerNotas(parseInt(notaMates.value), parseInt(notaLengua.value), parseInt(notaIngles.value) );
        alert("Notas asignadas! - " + "Mates:" + notaMates.value + " | Lengua:" + notaLengua.value + " | Ingles:" + notaIngles.value );
    }
}

//FUNCION PARA SACAR LA MEDIA DE UN ALUMNO DE LA SELECT
function fsacarMedia(){
    var seleccionado = nombres.selectedIndex;
    alert(arrayAlumnos[seleccionado].sacarMedia());
}

//FUNCION PARA SACAR UNA LISTA CON LOS NOMBRE DE LOS ALUMNOS CUYA MEDIA SEA 5 O MAYOR, ES DECIR APROBADOS
function fAprobados(){

    var aprobados = 0;

    for (i = 0; i < arrayAlumnos.length; i++) {
        if (arrayAlumnos[i].sacarMedia() >= 5) {
            aprobados++;
            var parrafo = document.createElement("p");
            var texto = document.createTextNode("NOMBRE: "+arrayAlumnos[i].nombre + " | NOTA MEDIA: "+ arrayAlumnos[i].sacarMedia() );
            parrafo.appendChild(texto);
            listaAprobados.appendChild(parrafo);
        }
    }
    
    if (aprobados == 0) {
        var parrafo = document.createElement("p");
        var texto = document.createTextNode("No hay ningun alumno aprobado");
        parrafo.appendChild(texto);
        listaAprobados.appendChild(parrafo);
    }
}