package Ejercicio2;

public class Cancion {
	private String titulo;
	private String interprete;
	
	public Cancion(String titulo, String interprete) {
		this.titulo = titulo;
		this.interprete = interprete;
	}
	
	public Cancion() {
		
	}
	
	public String dameTitulo() {
		return this.titulo;
	}
	
	public String dameInterprete() {
		return this.interprete;
	}
	
	public void ponTitulo(String titulo) {
		this.titulo = titulo;
	}
	
	public void ponInterprete(String interprete) {
		this.interprete = interprete;
	}

	public String verCancion() {
		return "Cancion [ titulo = " + titulo + ", interprete = " + interprete + "]";
	}
	
	
	
	
}
