package Ejercicio2;

import java.util.ArrayList;
import java.util.Arrays;

public class CD implements Construye{
	
	private Cancion[] canciones;
	private int contador;
	
	public CD() {
		this.canciones = new Cancion[MAXCORTES];
		this.contador = canciones.length;
	}
	
	public ArrayList<String> interpretes(){
		ArrayList <String> temp = new ArrayList<String>();
		for(int i=0;i<this.canciones.length;i++) {
			temp.add(this.canciones[i].dameInterprete());
		}
		return temp;
	}
	
	public int numeroCanciones() {
		return this.contador;
	}
	
	public Cancion devuelveCancion(int posicion) {
		Cancion copia = new Cancion();
		
		if(posicion<0 || posicion>this.numeroCanciones()) {
			System.out.println("Esa posicion no existe");
			return null;
		}
		else{
			copia = this.canciones[posicion];
			return copia;
		}
	}
	public void regrabaCancion(int posicion,Cancion nueva) {
		if(posicion<0 || posicion>this.numeroCanciones()) {
			System.out.println("Esa posicion no existe");
		}
		else {
			this.canciones[posicion]=nueva;
		}
	}
	
	public void agrega(Cancion nueva) {
		this.canciones[numeroCanciones()-1]=nueva;
	}
	
	public void eliminar(int posicion) {
		if(posicion<0 || posicion>this.numeroCanciones()) {
			System.out.println("Esa posicion no existe no se elimino");
		}else {
			this.canciones[posicion]=null;
			this.contador-=1;
		}
	}

	public String verCd() {
		return "CD [canciones=" + Arrays.toString(canciones) + ", contador=" + contador + "]";
	}
	
}
