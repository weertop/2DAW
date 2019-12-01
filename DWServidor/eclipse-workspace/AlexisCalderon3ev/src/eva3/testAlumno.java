package eva3;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;

public class testAlumno {

	public static ArrayList<Alumno> leerArch(File ruta) throws IOException{	//filenotfound
		FileReader fil = null;
		BufferedReader buf = null;
		String leido;
		Alumno al = null;
		ArrayList<Alumno> alumnos = new ArrayList<Alumno>();
		
		try {
		fil = new FileReader(ruta);
		buf = new BufferedReader(fil);
		
		while(buf.readLine()!=null) {
			leido = buf.readLine();
			al.setApellido1(obtenerApellido1(leido));
			al.setApellido2(obtenerApellido2(leido));
			al.setNombre(obtenerNombre(leido));
			al.
		}
		
		}catch(FileNotFoundException ex) {
			ex.printStackTrace();
		}finally {
			buf.close();
			fil.close();
		}
		
		return alumnos;
	}
	
	public static void mostrarContenido(ArrayList<Alumno> lista) {
		
	}
	
	public static void guardarArch(ArrayList<Alumno> alumnos, File ruta) throws IOException {
		FileWriter fw = null;
		BufferedWriter bf = null;
		String line;
		
		try {
		fw = new FileWriter(ruta);
		bf = new BufferedWriter(fw);
		
		Iterator it = alumnos.iterator();
		while(it.hasNext()) {
			bf.write(it.next().getApellido1 + " " + it.next().getApellido2() + "," + it.next().getNombre() + "-" + it.next().notaMedia());
			bf.newLine();
		}
		
		}catch(IOException ex) {
			ex.printStackTrace();
		}finally {
			bf.close();
			fw.close();
		}
	}
	
	public static String obtenerApellido1(String cadena) {
		String ret;
		int i=cadena.indexOf(' ');
		ret = cadena.substring(0, i);
		return ret;
	}
	
	public static String obtenerApellido2(String cadena) {
		String ret;
		int i=cadena.indexOf(' ');
		int j=cadena.indexOf(',');
		ret = cadena.substring(i,j);
		return ret;
	}
	
	public static String obtenerNombre(String cadena) {
		String ret;
		int i=cadena.indexOf(',');
		int j=cadena.indexOf('#');
		ret = cadena.substring(i,j);
		return ret;
	}
	
	public static String stringNotas(String cadena) {
		String ret;
		int i=cadena.indexOf('#');
		ret = cadena.substring(i+1);
		return ret;
	}
	
	public static String cortaNotaCadena(String cadena) {
		String ret;
		int i=cadena.indexOf(':');
		if(i==0) {
			ret = cadena.substring(0,i);
		}
		ret = cadena.substring(0,i);
		return ret;
	}
	
	public static int obtenerNota(String cadena) {
		String ret;
		int i=cadena.indexOf(':');
		ret = cadena.substring(0,i);
		return Integer.parseInt(ret);
	}
	
	
	public static void main(String[] args) throws IOException {
		Scanner sc = new Scanner(System.in);
		String rut;
		File ruta;
		ArrayList<Alumno> alumnos = new ArrayList<Alumno>();
		
		try {
		System.out.println("Dime la ruta del archivo notas: ");			//ejecucion solo poner notas.txt
		rut = sc.nextLine();
		ruta = new File(rut);
		
		alumnos = leerArch(ruta);
		guardarArch(alumnos, ruta);
		}catch(ClassNotFoundException ex) {
			ex.printStackTrace();
		}catch(FileNotFoundException ex) {
			ex.printStackTrace();
		}
		
	}

}
