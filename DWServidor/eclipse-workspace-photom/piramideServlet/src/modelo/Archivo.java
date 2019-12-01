package modelo;

import java.io.File;
import java.util.ArrayList;

public class Archivo {
	private String path;

	public Archivo(String path) {
		super();
		this.path = path;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}
	
	public ArrayList<String> dameFicherosImg() {
		String[] listado = null;
		ArrayList<String> listadoImg = new ArrayList<String>();
		File f= new File(path);
		if(f.isDirectory()) {
			listado = f.list();
		}
		for(int i=0;i<listado.length;i++) {
			if(listado[i].endsWith(".png") || listado[i].endsWith(".jpg")) {
				listadoImg.add(listado[i]);
			}
		}
		return listadoImg;
	}

	@Override
	public String toString() {
		return "Archivo [path=" + path + "]";
	}
	
	
}
