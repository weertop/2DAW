package prueba;

public class Perro extends Animal{
	
	private String raza;

	public Perro(String nombre, int tam, String raza) {
		super(nombre, tam);
		this.raza = raza;
	}

	public String getRaza() {
		return raza;
	}

	public void setRaza(String raza) {
		this.raza = raza;
	}
	
	public void mensaje() {
		System.out.println("soy un perro");
	}

	@Override
	public String toString() {
		return "Perro [raza=" + raza + "]";
	}
	
	
}
