package clasesPrincipales;
import java.io.Serializable;
import java.util.*;

/*Esta clase contiene la informacion sobre las salas en las que se
 se proyectaran las peliculas en el cine*/

public class Sala implements Serializable{

	private static int cont=1;   //atributo de tipo constante para asignarlo fijo a una sala
	private int id;
	private int butacas;
	private ArrayList<Sesion> sesiones= new ArrayList<Sesion>();  //Array de sesiones
	
	/*Constructor de Sala, podemos ver que para asignar un id a una sala usamos la constante
	 "cont" asi la primera vez sera la sala id 1, el contador incrementa y la segunda vez sera 2*/
	public Sala(int butacas) {
		this.id=Sala.cont;
		Sala.cont++;
		this.butacas=butacas;
	}
	
	public int getButacas() {
		return butacas;
	}
	
	public int getId() {
		return this.id;
	}

	/*Metodo add_sesion, este aniadira una sesion a la lista de sesiones
	 a una Sala si esta sesion tiene la misma fecha, con esto conseguimos
	 que una pelicula se emita en una sala.*/
	public boolean add_sesion(Sesion sesion){
		for(Sesion aux: sesiones) {
			if(aux.getFecha().equals(sesion.getFecha()))
				return false;
		}
		return sesiones.add(sesion);	
	}
	
	public String toString() {
		return "\n\tSala n�mero " + id + "  Num butacas: "+ butacas; 
	}
	
}
