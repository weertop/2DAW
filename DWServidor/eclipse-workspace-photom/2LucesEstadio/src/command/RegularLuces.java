package command;

public class RegularLuces implements Command{
	private ILuces luces;
	
	public RegularLuces(ILuces luces){
		this.luces = luces;
	}
	
	@Override
	public String execute() {
		String secuencias = "<h1> regulando luces... </h1>";
		secuencias += luces.regula();
		return secuencias;
	}
}
