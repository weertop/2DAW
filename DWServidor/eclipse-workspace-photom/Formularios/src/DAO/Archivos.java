package DAO;
import java.io.*;
import DAO.Alumno;

public class Archivos {
	public static void add(Alumno a, String path) throws IOException {
		File archivo;
		FileWriter fw = null;
		PrintWriter pw = null;
		try {
			archivo = new File(path);
			fw = new FileWriter(archivo, true);
			pw = new PrintWriter(fw);
			pw.println(a.getNombre() + "," + a.getApellidos() + "," + a.getPromedio());
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
}
