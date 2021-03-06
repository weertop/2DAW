package clasesPrincipales;
/*
 Esta clase contiene informacion sobre las peliculas 
 */

import java.io.Serializable;

public class Pelicula implements Serializable{
	
	private String titulo;
	private String director;
	private int anno;
	private String sinopsis;
	private genero genero;
	
	public Pelicula(String titulo, String director, int anno, String sinopsis, genero genero){
		this.setTitulo(titulo);
		this.setDirector(director);
		this.setAnno(anno);
		this.setSinopsis(sinopsis);
		this.setGenero(genero);
	}
	
	public genero getGenero() {
		return genero;
	}

	public void setGenero(genero genero) {
		this.genero = genero;
	}

	public String getSinopsis() {
		return sinopsis;
	}

	public void setSinopsis(String sinopsis) {
		this.sinopsis = sinopsis;
	}

	public int getAnno() {
		return anno;
	}

	public void setAnno(int anno) {
		this.anno = anno;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	
	public String toString() {
		return "\n\n\tTitulo:\t " + titulo + " \n" + "\tA�o:\t " + anno +
				"\n" + "\tDirector:\t " + director + "\n" + "\tSinopsis:\t " + sinopsis +
				"\n\tGenero:\t " + genero;
	}
}
