package dao;

public class Departamento2 {
	
	String nombreDepar;
	String dni_jefe;
	public Departamento2(String nombreDepar, String dni_jefe) {
		super();
		this.nombreDepar = nombreDepar;
		this.dni_jefe = dni_jefe;
	}
	public String getNombreDepar() {
		return nombreDepar;
	}
	public void setNombreDepar(String nombreDepar) {
		this.nombreDepar = nombreDepar;
	}
	public String getDni_jefe() {
		return dni_jefe;
	}
	public void setDni_jefe(String dni_jefe) {
		this.dni_jefe = dni_jefe;
	}
	@Override
	public String toString() {
		return "Departamento2 [nombreDepar=" + nombreDepar + ", dni_jefe=" + dni_jefe + "]";
	}
	
	
}
