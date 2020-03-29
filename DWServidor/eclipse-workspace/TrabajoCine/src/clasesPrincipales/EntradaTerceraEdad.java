package clasesPrincipales;
/*Esta es una subclase de Entradas que hereda sus atributos y metodo al que sobreescribe  */

public class EntradaTerceraEdad extends Entradas{

	private double descuento= 0.6;  //descuento del 40%
	
	public EntradaTerceraEdad(double precioEntrada) {
		super(precioEntrada);
	}
	
	/* Metodo sobreescrito para esta subclase ademas le multiplica por el descuento*/
	public double getPrecio() {
		return super.getprecioEntrada()*descuento;
	}
	
	
}