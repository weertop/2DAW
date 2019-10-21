package DAO;

public class Alumno {
	private String nombre;
	private String apellidos;
	private double promedio;
	
	public Alumno(String nombre, String apellidos, double promedio) {
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.promedio = promedio;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public double getPromedio() {
		return promedio;
	}

	public void setPromedio(double promedio) {
		this.promedio = promedio;
	}

	@Override
	public String toString() {
		return "Alumno [nombre=" + nombre + ", apellidos=" + apellidos + ", promedio=" + promedio + "]";
	}
	
	
}
