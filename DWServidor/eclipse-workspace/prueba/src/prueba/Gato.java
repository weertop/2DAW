package prueba;

public class Gato extends Animal{
	
	private int vidas=0;

	public Gato(String nombre, int tam, int vidas) {
		super(nombre, tam);
		this.vidas = vidas;
	}

	public int getVidas() {
		return vidas;
	}

	public void setVidas(int vidas) {
		this.vidas = vidas;
	}
	
	public void descontarVida() {
		this.vidas--;
	}

	@Override
	public String toString() {
		return "Gato [vidas=" + vidas + "]";
	}
	
	
}
