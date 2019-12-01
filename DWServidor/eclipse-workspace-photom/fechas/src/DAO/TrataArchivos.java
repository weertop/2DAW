package DAO;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

public class TrataArchivos {
	public static void reemplaza(Usuario usu, String path) throws IOException {
		File archivo;
		FileWriter fw = null;
		PrintWriter pw = null;
		try {
			archivo = new File(path);
			//if(archivo.exists()) archivo.delete();
			fw = new FileWriter(archivo);
			pw = new PrintWriter(fw);
			pw.println(usu.getNombre() + ":" + usu.getPromedio());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pw != null)
					pw.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
	
	public static Usuario readFile(String path) throws IOException {
		String linea = null;
		String datosUsu[];
		try {
			FileReader fr = new FileReader(path);
			BufferedReader br = new BufferedReader(fr);
			linea = br.readLine();								//porque solo tenemos una linea en el archivo
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		if(linea != null) {
			datosUsu = linea.split(":");
			return new Usuario(datosUsu[0],(long)Double.parseDouble(datosUsu[1]));
		}
		return null;
	}
}
