package prueba;

public class Animal {
	private String nombre;
	private int tam;
	public Animal(String nombre, int tam) {
		super();
		this.nombre = nombre;
		this.tam = tam;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public int getTam() {
		return tam;
	}
	public void setTam(int tam) {
		this.tam = tam;
	}
	
	public void aumnetarTam() {
		this.tam++;
	}
	@Override
	public String toString() {
		return "Animal [nombre=" + nombre + ", tam=" + tam + "]";
	}
	
}
