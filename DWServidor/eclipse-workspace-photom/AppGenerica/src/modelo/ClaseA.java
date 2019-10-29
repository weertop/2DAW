package modelo;

public class ClaseA {
	private String datoA;

	public ClaseA(String datoA) {
		super();
		this.datoA = datoA;
	}

	public String getDatoA() {
		return datoA;
	}

	public void setDatoA(String datoA) {
		this.datoA = datoA;
	}

	@Override
	public String toString() {
		return "ClaseA [datoA=" + datoA + "]";
	}
	
}
