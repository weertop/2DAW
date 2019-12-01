package modelo;

import java.io.File;
import java.util.ArrayList;

public class Archivos {

	private String path;

	public Archivos(String path) {
		super();
		this.path = path;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	@Override
	public String toString() {
		return "Archivos [path=" + path + "]";
	}
	
	public ArrayList<String> dameFicheros() { //obtener un array de nombres del contenido del fichero imagenes
		String [] listado=null;
		ArrayList<String> listadoImg=new ArrayList<String>();
		File f=new File(path);
		if (f.isDirectory()){
			listado=f.list();
			}
		for (int i=0;i<listado.length;i++) {
			if (listado[i].endsWith(".jpg") || listado[i].endsWith(".png")) {
				listadoImg.add(listado[i]);
			}
		}
		return listadoImg;
		}
}
