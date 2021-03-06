package clasesPrincipales;

import java.io.Serializable;

/*Esta clase cartelera se encargara de mostrar las peliculas en carteler seran aquellas que posean una sesion programada*/

public class Cartelera implements Serializable{

	private Cine cine;
	
	public Cartelera(Cine cine){
		this.cine=cine;
	}
	
	/*Encargada de mostrar la cartelera por pantalla dada un array de peliculas*/
	
	public void MostrarCartelera(){
		for (Pelicula aux: cine.getPeliculas()){
			if(cine.enCartelera(aux)!=null){
				System.out.println(aux);				
				System.out.println(cine.enCartelera(aux));
			}
			
		}
	}
}
