package clasesPrincipales;

/*Esta es una subclase de Entradas que hereda sus atributos y metodo al que sobreescribe */

public class EntradaNormal extends Entradas{

	public EntradaNormal(double precioEntrada) {
		super(precioEntrada);
	}
	
	/*Metodo sobreescrito para esta subclase, getPrecio()*/
	public double getPrecio() {
		return super.getprecioEntrada();
	}
}
