package pruebas;

import java.util.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import clasesPrincipales.*;

public class TesterSala {

	public static void main(String[] args) throws ParseException {

		
		/*Sala primera = new Sala(20);
		Sala segunda = new Sala(30);
		Sala tercera = new Sala(40);*/
		
		Cine c1 = new Cine("Odeon","Av. Numancia 23");
		
		/*Creamos 3 salas de cine primera, segunda, tercera*/
		
		Sala primera = c1.crearSala();
		Sala segunda = c1.crearSala();
		Sala tercera = c1.crearSala();

		/*Mostramos la informacion obtenida*/
		
		System.out.println("La primera " + primera.toString());
		System.out.println("La segunda " + segunda.toString());
		System.out.println("La tercera " + tercera.toString());

		/*Ahora vamos a comprobar el metodo add_sesion para lo cual debemos crear
		 peliculas y sesiones en concreto 2 peliculas y 3 sesiones, probaremos aniadir*/
		
		/*Pelicula nuevaPeli1 = new Pelicula("La Forma Del Agua", "Guillermo Del Toro", 2018,
				"Pelicula sobre el amor y sus interpretaciones", genero.DRAMA);
		Pelicula nuevaPeli2 = new Pelicula("Pacific Rim", "Guillermo Del Toro", 2015, "Robots gigantes",
				genero.FANTASIA);*/
		
		
		Pelicula nuevaPeli1 = c1.crear_pelicula();
		Pelicula nuevaPeli2 = c1.crear_pelicula();

		/*SimpleDateFormat SimpleDateFormat = new SimpleDateFormat("dd/mm/yyyy");
		String fecha = "10/10/2018";
		Sesion sesionPremier = new Sesion(SimpleDateFormat.parse(fecha), nuevaPeli1, primera);*/
		
		Sesion sesionPremier = c1.crearSesion(nuevaPeli1, primera);
		
		/*Comprobaremos si se aniaden correctamente y lo mostraremos en pantalla*/
		System.out.println("--------------------------------------------------------------------------------------------------------");
		mostrarSesion(primera,sesionPremier,nuevaPeli1, primera,  sesionPremier);

		/*Aniadimos otra sesion con otra fecha*/

		/*String fecha2 = "12/12/2018";
		Sesion sesionPremier2 = new Sesion(SimpleDateFormat.parse(fecha2), nuevaPeli2, segunda);
		*/
		
		Sesion sesionPremier2 = c1.crearSesion(nuevaPeli2, segunda);
		System.out.println("--------------------------------------------------------------------------------------------------------");
		mostrarSesion(primera,sesionPremier2,nuevaPeli2, segunda,  sesionPremier2);
		
		/* Declaramos la misma fecha que el anterior por lo que deberia fallar al aniadir la sesion ya que existe una con esa fecha en otra sala*/

		//Sesion sesionPremier3 = new Sesion(SimpleDateFormat.parse(fecha2), nuevaPeli2, tercera);
		Sesion sesionPremier3 = c1.crearSesion(nuevaPeli2, tercera);
		System.out.println("--------------------------------------------------------------------------------------------------------");
		mostrarSesion(primera,sesionPremier3,nuevaPeli2, tercera,  sesionPremier2);

	}

	private static void mostrarSesion(Sala primera,Sesion sesion,Pelicula peli , Sala sala,  Sesion otraSesion) {
		boolean sesionAniadida3 = primera.add_sesion(sesion);
		
		System.out.println("\n" + sesion.toString());
		if (sesionAniadida3 == true) {
			System.out.println(peli.getTitulo() + " se proyectara en la sala " + sala.getId());
		} else
			System.out.println(peli.getTitulo() + " ya posee una sala asignada, " + otraSesion.getSala());
	}
}