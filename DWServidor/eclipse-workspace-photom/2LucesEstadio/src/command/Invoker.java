package command;

public class Invoker {
	
	private Command comando;

	public Invoker(Command comando) {
		super();
		this.comando = comando;
	}
	
	public String run() {
		String salida = comando.execute();
		return salida;
	}
}
