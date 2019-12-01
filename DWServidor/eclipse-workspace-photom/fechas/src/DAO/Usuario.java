package DAO;

public class Usuario {
	private String nombre;
	private long promedio;
	public Usuario(String nombre, long promedio) {
		super();
		this.nombre = nombre;
		this.promedio = promedio;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public long getPromedio() {
		return promedio;
	}
	public void setPromedio(long promedio) {
		this.promedio = promedio;
	}
	@Override
	public String toString() {
		return "Usuario [nombre=" + nombre + ", promedio=" + promedio + "]";
	}
	
	
}
