package controlador;

import modelo.Usuario;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class trataTema
 */
@WebServlet("/trataTema")
public class trataTema extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private String nombre;
	private String apellidos;
	private String tema;
	private String comentario;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		nombre = request.getParameter("nombre");
		apellidos = request.getParameter("apellidos");
		comentario = request.getParameter("textArea");
		tema = request.getParameter("tema");
		
		Usuario usu = new Usuario(nombre,apellidos,tema,comentario);
		request.setAttribute("atribTema", usu);
		request.getRequestDispatcher("/muestraTema.jsp").forward(request, response);
	}

}
