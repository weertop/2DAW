//CONSTRUCTOR
//Propiedades: dni, nombre, edad, sexo (H,M), peso, altura
var Persona = function(dni, nombre, edad, sexo, peso, altura) {
    if (sexo !="H" && sexo !="M" ) {
        sexo = "H";
    }
    this.dni = dni;
    this.nombre = nombre;
    this.edad = edad;
    this.sexo = sexo;
    this.peso = peso;
    this.altura = altura;
}


//METODOS
//CALCULAR IMC
Persona.prototype.imc = function() {
var imc = (this.peso/(this.altura^2));
if (imc < 20) {
    return -1;
} else if (imc >= 20 && imc <= 25) {
    return 0;
}else if (imc > 25) {
    return 1;
}
}


//MAYOR DE EDAD
Persona.prototype.mayorEdad = function() {
if (this.edad < 18) {
    alert ("menor de edad");

} else {
    alert ("mayor de edad");
}

}


//DEVOLVER LA INFO DEL OBJETO
Persona.prototype.datos = function() {
    var altt= this.altura;
    return this.dni + this.nombre + this.edad + this.sexo + this.peso + altt.toString();
}