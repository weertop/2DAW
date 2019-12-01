package clasesPrincipales;
/*Esta es una subclase de Entradas que hereda sus atributos y metodo al que sobreescribe */

public class EntradaJoven extends Entradas{

	private double descuento= 0.7; //un descuento del 30%

	public EntradaJoven(double precioEntrada) {
		super(precioEntrada);
	}
	
	/*sobreescribimos el metodo y aniadimos el descuento"*/
	public double getPrecio() {
		return super.getprecioEntrada()*descuento;
	}
	
}
