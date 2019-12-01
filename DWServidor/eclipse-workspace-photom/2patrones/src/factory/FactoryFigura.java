package factory;

public class FactoryFigura {
	//ojo a este metodo
	public static Figura getFigura(String tipo) {
		//Aqui es donde se crean las clases circulo o rectangulo
		if(tipo.equals("circulo")) {
			return new Circulo();
		}else {
			return new Rectangulo();
		}		
	}
}
