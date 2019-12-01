package eva3;

import java.util.ArrayList;
import java.util.Iterator;

public class Alumno implements Comparable<Alumno> {

	private String apellido1;
	private String apellido2;
	private String nombre;
	private int nota;
	ArrayList<Integer>notas;
	
	public Alumno(String apellido1, String apellido2, String nombre, int nota) {
		this.apellido1 = apellido1;
		this.apellido2 = apellido2;
		this.nombre = nombre;
		notas = new ArrayList<Integer>();
		this.notas.add(nota);
	}

	public String getApellido1() {
		return apellido1;
	}

	public void setApellido1(String apellido1) {
		this.apellido1 = apellido1;
	}

	public String getApellido2() {
		return apellido2;
	}

	public void setApellido2(String apellido2) {
		this.apellido2 = apellido2;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	public int notaMedia() {
		int media = 0;
		int suma = 0;
		int cont = 0;
		int tam = notas.size();
		
		Iterator it = notas.iterator();
		while(it.hasNext()) {
			suma += notas.get(cont);
			cont++;
		}
		media = suma/tam;
		return media;
	}
	
	public void mostrarNotas() {
		Iterator it = notas.iterator();
		while(it.hasNext()) {
			System.out.println(it.next());
		}
	}

	@Override
	public int compareTo(Alumno arg0) {
		return this.apellido1.compareTo(arg0.getApellido1());
	}
	
}
