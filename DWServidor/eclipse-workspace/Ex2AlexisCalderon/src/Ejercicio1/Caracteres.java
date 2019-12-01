package Ejercicio1;

import java.util.Scanner;

public class Caracteres {
	
	public static void main(String[] args) {
		String cadena;
	
		char temp;
		Scanner sc = new Scanner(System.in);
		System.out.println("intruduce texto: ");
		cadena = sc.nextLine();
			
		for(int i=0;i<cadena.length();i++) {
			if(cadena.charAt(i)=='F') {
				if(cadena.charAt(i+1)=='i') {
					if(cadena.charAt(i+2)=='n') {
						break;
					}
				}
			}else 
				System.out.print(cadena.charAt(i));
		}
	}
}
