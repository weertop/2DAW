package modelo;

public class Linea {

	private String origen;
	private String destino;
	private double factor;
	
	public Linea(String origen, String destino, double factor) {
		super();
		this.origen = origen;
		this.destino = destino;
		this.factor = factor;
	}

	public String getOrigen() {
		return origen;
	}

	public void setOrigen(String origen) {
		this.origen = origen;
	}

	public String getDestino() {
		return destino;
	}

	public void setDestino(String destino) {
		this.destino = destino;
	}

	public double getFactor() {
		return factor;
	}

	public void setFactor(double factor) {
		this.factor = factor;
	}

	public String generaLinea() {
		return origen + ":" + destino  + ":" +  factor + "\r\n";
	}

	@Override
	public String toString() {
		return "Linea [origen=" + origen + ", destino=" + destino + ", factor=" + factor + "]";
	}
	
		
	
}
