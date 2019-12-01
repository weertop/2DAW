package controlador;

import modelo.Archivo;
import modelo.Linea;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class anexaDatos
 */
@WebServlet("/anexaDatos")
public class anexaDatos extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private String origen;
	private String destino;
	private double factor;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		origen = request.getParameter("origen");
		destino = request.getParameter("destino");
		factor = Double.parseDouble(request.getParameter("factor"));
		
		Linea linea = new Linea(origen,destino,factor);
		Archivo a = new Archivo("C:\\Users\\alexc\\eclipse-workspace-photom\\conGet\\WebContent\\factor.txt");
		
		a.add(linea.generaLinea());
		
		//solo este no se pone el otro
		request.getRequestDispatcher("/muestraResultado.html").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
