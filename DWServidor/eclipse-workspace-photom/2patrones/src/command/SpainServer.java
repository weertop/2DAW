package command;

public class SpainServer implements IServer{

	@Override
	public String apgate() {
		// TODO Auto-generated method stub
		return "<p> Apagando server en Spain</p>";
	}

	@Override
	public String arrancate() {
		// TODO Auto-generated method stub
		String dato = "servidor unix";
		return "<p>" + dato + " Iniciando server en Spain</p>";
	}

	@Override
	public String conectate() {
		// TODO Auto-generated method stub
		return "<p> Concectando server en Spain</p>";
	}

	@Override
	public String desconectate() {
		// TODO Auto-generated method stub
		return "<p> Desconectando server en Spain</p>";
	}

	@Override
	public String guardarLogs() {
		// TODO Auto-generated method stub
		return "<p> Guardando Logs server en Spain</p>";
	}

}
