
public class PruebaInterface {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Persona persona = new Persona("pepe",23);
		Piso piso = new Piso(9);
		
		Serie1 refInter = null;	//creamos la referecnai a la interfaz serie1
		
		System.out.println(refInter.getSiguiente());
		
		refInter = piso; 	//hacemos que apunte a la instancia de tipo piso
		
		System.out.println(refInter.getSiguiente());
		
		refInter = persona;
		
		System.out.println(refInter.getSiguiente());
	}

}
