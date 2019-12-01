package controlador;

import java.io.IOException;
import modelo.Archivos;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Opinion;

/**
 * Servlet implementation class trataEligeTema
 */
@WebServlet("/trataEligeTema")
public class trataEligeTema extends HttpServlet {

	private String nombre;
	private String apellidos;
	private String tema;
	private String comentario;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ME DESCARGO MIS VARIABLES Y CON ESO YA ME PUEDO HACER UN OBJETO DE LA CLASE
		// ALUMNO
		ArrayList<String> misFotos = new ArrayList<String>();
		nombre = request.getParameter("nombre");
		apellidos = request.getParameter("apellidos");
		tema = request.getParameter("tema");
		comentario = request.getParameter("comentario");

		Opinion o = new Opinion(nombre, apellidos, tema, comentario);
		Archivos a = new Archivos("C:\\Users\\alexc\\eclipse-workspace-photom\\MarcosEligeTema\\WebContent\\Imagenes\\" + tema);
		ArrayList<String> carpetas = a.dameFicheros();
//		for (int i = 0; i < carpetas.size(); i++) {
//
//			if (carpetas.get(i).startsWith(tema)) {
//				misFotos.add(carpetas.get(i));
//			}
//		}

		Random rd = new Random();
		int numale = rd.nextInt(carpetas.size());
		o.setFoto("Imagenes/" + tema + "/" + carpetas.get(numale));

		request.setAttribute("atribOpinion", o);
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			// con esta instruccion se hace un reenvio a traves de forward de los objetos
			// request y response a muestraDatosCalc.jsp
			// SE PASA TODO A LA VISTA MUESTRADATOS
			request.getRequestDispatcher("/mostrarEligeTema.jsp").forward(request, response);
		} finally {
			out.close();
		}

	}

}
