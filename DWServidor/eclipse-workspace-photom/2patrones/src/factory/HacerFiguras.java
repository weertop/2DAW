package factory;

public class HacerFiguras {
	//clase que creara realmente las figuras y nos mostrara, realmente no se debe usar asi sino se debe usar paginas web
	public static void main(String[] args) {
		Figura f = FactoryFigura.getFigura("circulo");
		f.setColor("red");
		f.setMedida(30);
		System.out.println(f.dibuja());
	}
}