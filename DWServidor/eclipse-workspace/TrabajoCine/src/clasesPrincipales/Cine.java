package clasesPrincipales;
import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/*
 Esta aplicacion se centra en un Cine real, encargada de trabajar con las demas clases: Sala, Sesion, Pelicula,etc 
 */

public class Cine implements Serializable{
	
	private String nombre;
	private String direccion;
	private ArrayList<Pelicula> ListaPeliculas = new ArrayList<Pelicula>();
	private ArrayList<Sala> ListaSalas = new ArrayList<Sala>();
	private ArrayList<Sesion> ListaSesiones = new ArrayList<Sesion>();

	public Cine(String nombre, String direccion){
		this.nombre=nombre;
		this.direccion=direccion;
	}
	
	/*
	 Metodo encargado de aniadir una pelicula a la ListaPeliculas mediante el metodo add.
	 */
	public boolean add_pelicula(Pelicula pelicula){
		return ListaPeliculas.add(pelicula);
	}
	
	/*
	 Metodo encargado de añadir una sala a la ListaSalas mediante el metodo add.
	 */
	public boolean add_sala(Sala sala){
		return ListaSalas.add(sala);
	}
	
	/*
	 Metodo encargado de añadir una sesion a la ListaSesiones mediante el metodo add.
	 */
	public boolean add_sesion(Sesion sesion){
		return ListaSesiones.add(sesion);
	}

	public Pelicula crear_pelicula_auto(String nombre,String director,int anno,String sinopsis, genero genero) {
		if (anno<0) return null;
		return new Pelicula(nombre, director, anno, sinopsis, genero);
	}
	/*
	 Metodo encargdo de crear una Pelicula con los datos que recibamos, comprobaremos que el año no sea negativo o 0
	 */
	public Pelicula crear_pelicula(){
		
		String titulo;
		String director;
		int anno;
		String sinopsis;
		genero genero = null;
		Pelicula p = null;
		int opcionTipo;
		
		Scanner sc = new Scanner(System.in);
		
		System.out.print("\nIntroduce el titulo: ");
		titulo = sc.nextLine();
		System.out.print("Introduce el director: ");
		director = sc.nextLine();
		do {
			System.out.print("Introduce el a�o: ");
			anno = sc.nextInt();
			sc.nextLine();
		} while (anno < 0);
		System.out.println("Introduce el sinopsis: ");
		sinopsis = sc.nextLine();
		System.out.println("\nIntroduce el genero:\n\t1)TERROR\n" + 
				"\t2)FANTASIA\n" + 
				"\t3)DRAMA\n" + 
				"\t4)COMEDIA\n" + 
				"\t5)TRHILLER, ");
		opcionTipo = sc.nextInt();
		switch (opcionTipo) {
			case 1: genero=genero.TERROR;
			case 2: genero=genero.FANTASIA;
			case 3: genero=genero.DRAMA;
			case 4: genero=genero.COMEDIA;
			case 5: genero=genero.TRHILLER;
		}
		
		p = new Pelicula(titulo, director, anno, sinopsis, genero);
		
		return p;
	}
	
	public Sala crearSala() {
		int butacas = 0;
		Sala s = null;
		
		Scanner sc = new Scanner(System.in);
		try {
			System.out.print("\nIntroduce el numero de butacas: ");
			butacas = sc.nextInt();
		} catch (InputMismatchException ex) {
			System.out.println("\t\tERROR!!!!!!!!!!!!\nEl numero de butacas debe ser un valor numerico!");
		}
		s = new Sala(butacas);
		
		return s;
	}
	
	public Sesion crearSesion(Pelicula p, Sala s){
		String fechaInicial,dia,mes,anio;
		Date fecha = null;
		Pelicula pelicula;
		Sala sala;
		Sesion se = null;

		Scanner sc = new Scanner(System.in);
		/*la unica forma que encontre para anadir fechas de una forma sencilla en java*/
		SimpleDateFormat SimpleDateFormat = new SimpleDateFormat("dd/mm/yyyy");
		//System.out.print("\nIntroduce fecha de la sesion (con formato dd/mm/aaaa): ");
		do {
			System.out.print("\nIntroducir dia: ");
			dia = sc.nextLine();
		}while(Integer.parseInt(dia)<1 || Integer.parseInt(dia)>31);
		do {
			System.out.print("Introducir mes: ");
			mes = sc.nextLine();
		}while(Integer.parseInt(mes)<1 || Integer.parseInt(mes)>12);
		do {
		System.out.print("Introducir anio: ");
		anio = sc.nextLine();
		}while(Integer.parseInt(anio)<1900 || Integer.parseInt(anio)>3000);
		
		fechaInicial = (dia + "/" + mes + "/" + anio);
		
		//fechaInicial = sc.nextLine();
		try {
			fecha = SimpleDateFormat.parse(fechaInicial);
		} catch (ParseException ex) {
			System.out.println("Error al introducir fecha!!! sigue el formato (dd/mm/aaaa)");
		}
		se = new Sesion(fecha, p, s);
		return se;
	}

	/*Metodo getter para obetener la Lista de peliculas*/
	public ArrayList<Pelicula> getPeliculas(){
		return ListaPeliculas;
	}

	/* Metodo encargado de Eliminar una Pelicula de la cartelera, buscara en que salas
	 se proyectaba la pelicula y la quitara devolviendo el numero de sesiones eliminadas */
	public int removePeliculaCartelera(Pelicula peli){
		int tamanio;
		tamanio=enCartelera(peli).size();
		if( ListaPeliculas.remove(peli)==false ) return -1;
		System.out.println("Pelicula eliminada correctamente, numero de sesiones eliminadas en todas las salas: "+ tamanio);
		return tamanio;
	}

	/* Metodo encargado de colocar peliculas EnCartelera, crearemos un array de sesion
	 en el que se aniadiran las peliculas que tengan sesiones ya programadas.
	 devolveremos dicha lista.*/
	public ArrayList<Sesion> enCartelera(Pelicula pelicula){
		ArrayList<Sesion> pelisEnCartelera = new ArrayList<Sesion>();

		for(Sesion aux: ListaSesiones){
			if(aux.getPelicula().equals(pelicula)){
				pelisEnCartelera.add(aux);
			}
			return pelisEnCartelera;
		}
		return null;
	}

	/*Metodo encargado de vender una entrada, recibiendo una sesion y el tipo de entrada
	 aplicaremos el metodo venta de dicha sesion y mostraremos un mensaje por pantalla
	 de si fue correcto o no.*/
	public boolean venderEntrada(Sesion sesion, int tipoEntrada){
		boolean status;
		status=sesion.venta(tipoEntrada);
		if(status==false) {
			System.out.println("Las entradas est�n agotadas para esta sesi�n");
			return false;
		}
		System.out.println("La pelicula " + sesion.getPelicula().getTitulo() + " se proyecta en la sala " +
				sesion.getSala().getId());
		return status;
	}

	/*Meotodo para verficar lo recaudado por una peli, verificara esta en la lista de peliculas
	 que tengan sesiones e ira sumando lo recaudado para devolverlo.*/
	public double recaudacionPelicula(Pelicula peli) {
		double recaudado=0;
		if(ListaPeliculas.contains(peli)==false) return -1;
		for(Sesion aux:ListaSesiones){
			if(aux.getPelicula().equals(peli)){
				recaudado+=aux.recaudado();
			}
		}
		System.out.println("Con la pelicula: " + peli.getTitulo() + " se han recaudado " + recaudado + "�" );
		return recaudado;
	}

	public String getNombre() {
		return nombre;
	}

	public String getDireccion() {
		return direccion;
	}


	@Override
	public String toString() {
		return "Cine: " + nombre + ", direccion: " + direccion + ", \nListaPeliculas: " + ListaPeliculas.toString()
				+ "\nListaSalas:" + ListaSalas.toString() + "\nListaSesiones:" + ListaSesiones.toString() + "]";
	}
	
	
}

