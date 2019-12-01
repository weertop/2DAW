import java.util.ArrayList;
import java.util.Iterator;


public class Comentario implements Comparable<Comentario> {
	
	private int id=0;
	private String comentario;
	private int puntos = 0;
	private ArrayList<Comentario> respuestas;

	public Comentario(String coment) {
		// respuestas = new ArrayList<Comentario>();
			this.comentario = coment;
			respuestas = new ArrayList<Comentario>();
			this.id++;
	}
		
	public void responderC (String resp) {
		Comentario temp = new Comentario(resp);
		this.respuestas.add(temp);
	}
	
	public int getPuntos() {
		return puntos;
	}

	public void setPuntos(int puntos) {
		this.puntos = puntos;
	}

	public void votarPositivo() {
		this.puntos++;
	}
	
	public void votarNegativo() {
		this.puntos--;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void mostrarComenResp() {
		System.out.println(this.comentario);
		Iterator it = respuestas.iterator();
		while(it.hasNext()) {
			System.out.println(it.next());
		}
	}

	@Override
	public String toString() {
		return "Respuesta [id=" + id + ", dice =" + comentario + "]";			//obtener nombre usuario
	}

	@Override
	public int compareTo(Comentario arg) {
		if(this.puntos > arg.getPuntos())
			return 1;
		else if(this.puntos == arg.getPuntos())
			return 0;
		else
			return -1;
	}
	
	
}
