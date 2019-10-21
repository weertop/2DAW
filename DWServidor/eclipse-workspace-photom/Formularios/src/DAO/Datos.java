package DAO;
import java.util.*;

public class Datos {

	public Datos() {};
	
	public ArrayList<hotel> devolverDatos(){
		ArrayList<hotel> listaHoteles = new ArrayList();
		//las listas del anterior ejercicio
		int[][] arrayExtras = {{15,10,10},{15,15,15},{20,20,20},{25,25,30},{30,40,50}};
		listaHoteles.add(new hotel("Ritz",100,110,arrayExtras[0]));
		listaHoteles.add(new hotel("EuroStars",120,140,arrayExtras[1]));
		listaHoteles.add(new hotel("AC",140,175,arrayExtras[2]));
		listaHoteles.add(new hotel("Barcelo",200,250,arrayExtras[3]));
		listaHoteles.add(new hotel("Hilton",300,350,arrayExtras[4]));
		
		return listaHoteles;
	}
	
}
