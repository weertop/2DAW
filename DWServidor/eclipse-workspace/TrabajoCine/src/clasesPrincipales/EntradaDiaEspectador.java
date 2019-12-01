package clasesPrincipales;

/*Esta es una subclase de Entradas que hereda sus atributos y metodo al que sobreescribe*/

public class EntradaDiaEspectador extends Entradas{

	public EntradaDiaEspectador(double precioEntrada) {
		super(precioEntrada);
	}
	
	/*Metodo sobreescrito para esta subclase, getPrecio() devolvera 
	 el precio fijo para el dia del espectaro que son 5*/
	public double getPrecio() {
		return 5.0;
	}
}
