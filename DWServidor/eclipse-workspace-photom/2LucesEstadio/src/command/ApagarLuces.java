package command;

public class ApagarLuces implements Command{
	private ILuces luces;
	
	
	public ApagarLuces(ILuces luces) {
		super();
		this.luces = luces;
	}


	@Override
	public String execute() {
		String secuencias = "<h1> iniciando apagado... </h1>";
		secuencias += luces.apagate();
		return secuencias;
	}

}
