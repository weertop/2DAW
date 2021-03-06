package pruebas;

import clasesPrincipales.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;

public class SesionPrueba {	
	
	public static void main(String[] args) throws ParseException{

		/*Sala s1 = new Sala(10);
		System.out.println("Sala: " + s1.toString());
		Pelicula p1 = new Pelicula("La llamada", "Los javis", 2007, "Hoy he sentido la llamada.", genero.MUSICAL);
		SimpleDateFormat SimpleDateFormat = new SimpleDateFormat("dd/mm/yyyy");
		String fecha = "11/03/2018";
		Sesion se1 = new Sesion(SimpleDateFormat.parse(fecha), p1, s1);*/
		
		Cine c1 = new Cine("Odeon","Av. Numancia 23");
		
		Sala s1 = c1.crearSala();
		
		Pelicula p1 = c1.crear_pelicula();
		
		Sesion se1 = c1.crearSesion(p1,s1);
		
		System.out.println("\n" + se1.toString());
		System.out.println("\nN�mero de butacas totales en la sala: " + se1.getNum_butacas());
		System.out.println("Numero de butacas disponibles en la sala: " + se1.getNum_butacas_disponibles());
		System.out.println("\nCompramos una entrada y comprobamos que el n�mero de butacas disponible se reduce.");
		se1.venta(1);
		System.out.println("Numero de butacas disponibles en la sala: " + se1.getNum_butacas_disponibles());
		
		System.out.println("\nAhora vendemos todas las entradas del cine e intentamos combrar una cuando la sala est� llena, despues veremos lo recaudado.");
		for (int i = 0; i < 10; i++)
			System.out.println(se1.venta((int)(Math.random()*(4-1+1) + 1)));
		
		System.out.println("\nDinero recaudado :" + se1.recaudado());
		System.out.println("\nNumero de butacas disponibles en la sala: " + se1.getNum_butacas_disponibles());

	}
}
