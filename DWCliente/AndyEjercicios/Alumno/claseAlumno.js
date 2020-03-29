function alumno(nAlumno, nombre, notaMates, notaLengua, notaIngles){
    this.nAlumno = nAlumno;
    this.nombre = nombre;
    this.notaMates = 0;
    this.notaLengua = 0;
    this.notaIngles = 0;
}

alumno.prototype.añadir = function (arrayAlumnos){
    arrayAlumnos.push(this);
}

alumno.prototype.ponerNotas = function (notaMates, notaLengua, notaIngles){
    this.notaMates = notaMates;
    this.notaLengua = notaLengua;
    this.notaIngles = notaIngles;
}

alumno.prototype.sacarMedia = function (){
    var media = ( this.notaMates + this.notaLengua + this.notaIngles ) / 3 ;
    return media;
}

