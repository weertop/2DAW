package factory;

public class Circulo extends Figura{
	
	@Override
	 public String dibuja() {
		String salida="circle cx=200 cy=200 r="+getMedida()+" stroke=\"blue\"  fill="+getColor()+" stroke-width=\"2px\"";
		return salida;
	 }

}
