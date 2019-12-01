package prueba;

public class main {

	public static void main(String[] args) {
		System.out.println("hola mundo");
		
		Animal an1 = new Animal("ringo",3);
		Perro pe1 = new Perro("balto",3,"huskey");
		Gato ga1 = new Gato("misifus",1,7);
		Animal temp;
		
		System.out.println(an1.toString());
		System.out.println(pe1.toString());
		System.out.println(ga1.toString());
		
		System.out.println();
		
		temp = an1;
		System.out.println(temp.toString());
		temp=pe1;
		System.out.println(temp.toString());
		temp=ga1;
		System.out.println(temp.toString()+((Gato)temp).getVidas());
		
	}

}
