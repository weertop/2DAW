package controlador;

import modelo.Alumno;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class muestraRegistro
 */
@WebServlet("/muestraRegistro")							//esto nos dice que vamos a reescribir el servlet
public class muestraRegistro extends HttpServlet {
	private String nombre;								//variables para recibir datos con request
	private String apellidos;
	private double promedio;
	
	//el doGet no lo usaremos por eso se puede quitar sino se deja
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		nombre = request.getParameter("nombre");			//esto es lo que recibimos del formulario index
		apellidos = request.getParameter("apellidos");
		promedio = Double.parseDouble(request.getParameter("promedio"));
		
		Alumno alum1 = new Alumno(nombre,apellidos,promedio);
		
		//en el objeto request guardamos el objeto alumno, usamos el atributo atribAlumn para guardarlo
		request.setAttribute("atribAlumn",alum1);						//guardamos en la variable atribAlumn el objeto en la vista se lo saca con getAtrribute
		//con esta instruccion se hace un reenvio a traves de forward de los objetos request y response a muestraDatos.jsp
		request.getRequestDispatcher("/muestraDatos.jsp").forward(request, response);		//muestraDatos.jsp seria la vista

	}

}
