package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.ClaseA;

/**
 * Servlet implementation class trataDatos
 */
@WebServlet("/trataDatos")
public class trataDatos extends HttpServlet {


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);		
		//ponemos que si se ejecuta el deGet opr alguna razon saltaria al doPost
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//reescribimos
		//descargar por request.getParameter los datos de la peticion
		//crear un objeto de la claseA llamado a
		//guardar objeto con request.setAttribute("atributeClaseA",a);
		//con esta instruccion se hace un reenvio a traves de forward de los objetos a la vista que los represente
		//request.getRequestDispatcher("/vistaMuestraDatos.jsp").forward(request,response);
	}

}
