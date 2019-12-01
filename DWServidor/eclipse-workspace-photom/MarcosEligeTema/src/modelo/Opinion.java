package modelo;

public class Opinion {

	private String nombre;
	private String apellidos;
	private String tema;
	private String comentario;
	private String foto;
	
	public Opinion(String nombre, String apellidos, String tema, String comentario) {
		super();
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.tema = tema;
		this.comentario = comentario;
		this.foto = "";
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getTema() {
		return tema;
	}

	public void setTema(String tema) {
		this.tema = tema;
	}

	public String getComentario() {
		return comentario;
	}

	public void setComentario(String comentario) {
		this.comentario = comentario;
	}

	
	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	@Override
	public String toString() {
		return "Opinion [nombre=" + nombre + ", apellidos=" + apellidos + ", tema=" + tema + ", comentario="
				+ comentario + "]";
	}
	
	
}
