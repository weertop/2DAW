package pruebas;

import clasesPrincipales.*;

public class PeliculaPrueba {

	public static void main(String[] args) {

		/*Pelicula p1 = new Pelicula("La llamada", "Los javis", 2007, "Hoy he sentido la llamada.", genero.MUSICAL);
		Pelicula p2 = new Pelicula("Black Phanter", "Ryan Coogler", 2018, "sinopsis blackPhanter", genero.FANTASIA);*/
		
		/*creamos 2 peliculas*/
		Cine c1 = new Cine("Odon","Av. Pineda 12");
		Pelicula p1 = c1.crear_pelicula();
		System.out.println("Imprimimos la primera pel�cula");
		System.out.println(p1);

		Pelicula p2 = c1.crear_pelicula();
		System.out.println("\nImprimimos la segunda pel�cula:");
		System.out.println(p2);

	}
}
