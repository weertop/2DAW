package dao;

public class Departamento {
	
	String nombreDep;
	Persona jefe;
	
	public Departamento(String nombreDep, Persona jefe) {
		this.nombreDep = nombreDep;
		this.jefe = jefe;
	}

	public String getNombreDep() {
		return nombreDep;
	}

	public Persona getJefe() {
		return jefe;
	}

	public void setJefe(Persona jefe) {
		this.jefe = jefe;
	}

	public void setNombreDep(String nombreDep) {
		this.nombreDep = nombreDep;
	}

	@Override
	public String toString() {
		return "Departamento [nombreDep=" + nombreDep + ", jefe=" + jefe + "]";
	}
	
}
