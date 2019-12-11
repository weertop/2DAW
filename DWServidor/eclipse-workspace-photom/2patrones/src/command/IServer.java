package command;

//tener en cuenta que lo que va a devolver es HTML
public interface IServer {
	//comandos que hara el servidor web
	public String apgate();
	
	public String arrancate();
	
	public String conectate();
	
	public String desconectate();
	
	public String guardarLogs();
	
}
