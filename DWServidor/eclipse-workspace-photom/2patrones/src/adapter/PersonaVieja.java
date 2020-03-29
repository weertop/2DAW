package adapter;

import java.time.LocalDate;

//no tiene constructor se lo hara luego con el set 
public class PersonaVieja implements IPersonaVieja{
	private String nombre;
	private String apellido;
	private LocalDate fechaNacimiento;
	
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellidos() {
		return apellido;
	}
	public void setApellidos(String apellido) {
		this.apellido = apellido;
	}
	public LocalDate getFechaNacimiento() {
		return fechaNacimiento;
	}
	public void setFechaNacimiento(LocalDate fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}
	
	
}