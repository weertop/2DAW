package adapter;

import java.time.*;
import java.time.temporal.ChronoUnit;

public class ViejaANuevaAdapter implements IPersonaNueva{

	private IPersonaVieja vieja; 	//variable de referecia a la interfaz de IPersonaVieja

	public ViejaANuevaAdapter(IPersonaVieja vieja) {
		this.vieja = vieja;
	}
	
	public String getNombre() {
		return vieja.getNombre() + "," + vieja.getApellidos();
	}
	
	public int getEdad() {
		LocalDate ahora = LocalDate.now();
		LocalDate naciemiento = vieja.getFechaNacimiento();
		int laEdad = (int) ChronoUnit.YEARS.between(naciemiento, ahora);
		return laEdad;
	}
	
	public void setNombre(String nombre) {
		String[] nombreApellido = nombre.split(",");
		vieja.setNombre(nombreApellido[0]);				//tendra el nombres
		vieja.setApellidos(nombreApellido[1]);			//tendra los apellidos
	}
	
	public void setEdad(int nuevaEdad) {
		LocalDate ahora = LocalDate.now();
		LocalDate viejaFecha = vieja.getFechaNacimiento();
		int anio = ahora.getYear() - nuevaEdad;
		String nuevaFechaNac = anio + "-" + viejaFecha.getMonthValue() + "-" + viejaFecha.getDayOfMonth();
		
		LocalDate fNueva = LocalDate.parse(nuevaFechaNac);
		
		vieja.setFechaNacimiento(fNueva);
	}
}