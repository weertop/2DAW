
public class Piso implements Serie1{
	private int planta;

	public Piso(int planta) {
		
		this.planta = planta;
	}

	public int getPlanta() {
		return planta;
	}

	public void setPlanta(int planta) {
		this.planta = planta;
	}
	public int getSiguiente() {
		return planta+2;
	}

}
