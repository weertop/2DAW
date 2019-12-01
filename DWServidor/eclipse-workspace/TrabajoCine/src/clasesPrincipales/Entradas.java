package clasesPrincipales;

import java.io.Serializable;

/*Esta clase abstracta se referira a las Entradas, es abstracta ya que posee
 varias subclases dependiendo del tipo de entrada: Joven, normal, tercera edad,etc  */

public abstract class Entradas implements Serializable{
	
	private double precioEntrada;
	
	public Entradas(double precioEntrada){
		this.precioEntrada=precioEntrada;
	}
	
	public double getprecioEntrada(){
		return this.precioEntrada;
	}
	
	/*Metodo abstracto para obetner el precio de la entrada, se devera codificar el metodo en 
	 las subclases*/
	public abstract double getPrecio();
}
