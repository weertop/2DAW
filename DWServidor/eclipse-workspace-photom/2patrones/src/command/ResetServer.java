package command;

public class ResetServer implements Command{

	private IServer servidor;
	
	public ResetServer(IServer servidor) {
		this.servidor = servidor;
	}

	@Override
	public String execute() {
		String secuencia = "<h1> iniciando secuencia de reinicio ...</h1>";
		secuencia+=servidor.guardarLogs();
		secuencia+=servidor.desconectate();
		secuencia+=servidor.apgate();
		secuencia+=servidor.arrancate();
		secuencia+=servidor.conectate();
		
		return secuencia;
	}

}