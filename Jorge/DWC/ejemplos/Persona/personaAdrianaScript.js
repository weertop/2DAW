//var Personas = new Array();

window.onload = function() {

for (var i = 0;  i<3;  i++) {
    var id = prompt("Introduzca su DNI:");
    if (id.length < 9) {
        alert("Debe estar compuesto por 8 numeros y 1 letra.");
    }

    var nom = prompt("Introduzca su nombre:");
                    
    var ed = parseInt(prompt("Introduzca su edad:"));
        if (isNaN(ed)) {
            alert("La cantidad introducida debe ser un número.");
        }      

    var sx = prompt("Introduzca su sexo (H o M):"); //AQUI FALLA ALGO -> H IS NOT DEFINED

 
    var ps = parseInt(prompt("Introduzca su peso en kg:"));
        if (isNaN(ps)) {
            alert("La cantidad introducida debe ser un número.");
        } 

    var alt = parseInt(prompt("Introduzca su altura en m:"));
        if (isNaN(alt)) {
            alert("La cantidad introducida debe ser un número.");
        }

    
    var persona1 = new Persona (id, nom, ed, sx, ps, alt);


    persona1.mayorEdad();


    if (persona1.imc() == -1) {
        alert ("Masa corporal por debajo de lo ideal");
    } else if (persona1.imc() == 0) {
        alert ("Masa corporal ideal");
    } else if (persona1.imc() == 1) {
        alert ("Masa corporal por encima de lo ideal");
    }


    var cadena = persona1.datos();
    alert(cadena);

}

}


   