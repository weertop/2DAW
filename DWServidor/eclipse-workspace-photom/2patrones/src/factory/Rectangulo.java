package factory;

public class Rectangulo extends Figura{
	
	@Override
	 public String dibuja() {
		String salida="rect x=50 y=50 width="+getMedida()+" height="+getMedida()+" stroke=\"green\"  fill="+getColor()+" stroke-width=\"2px\"";
		return salida;
	 }
}
