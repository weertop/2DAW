package controlador;

import modelo.Archivo;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class listarArchivo
 */
@WebServlet("/listarArchivo")
public class listarArchivo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Archivo a = new Archivo("C:\\Users\\alexc\\eclipse-workspace-photom\\conGet\\WebContent\\factor.txt");
		request.setAttribute("atribArchivo", a);
		request.getRequestDispatcher("/muestraArchivo.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
