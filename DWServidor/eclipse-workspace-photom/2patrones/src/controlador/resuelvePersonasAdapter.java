package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import adapter.PersonaVieja;
import adapter.ViejaANuevaAdapter;

/**
 * Servlet implementation class resuelvePersonasAdapter
 */
@WebServlet("/resuelvePersonasAdapter")
public class resuelvePersonasAdapter extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	  private String nombre;
	  private String ape;
	  private LocalDate fecha;
	    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		nombre = request.getParameter("nombre").trim();
		ape = request.getParameter("apellidos").trim();
		fecha = LocalDate.parse(request.getParameter("fecha"));
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
				
		out.println("<DOCTYPE html>");
		out.println("<head>");
		out.println("<title> lectorEscritor </title>");
		out.println("</head>");
		out.println("<body>");
			if(!nombre.isEmpty() && !ape.isEmpty()) {
				PersonaVieja vj = new PersonaVieja();
				vj.setNombre(nombre);
				vj.setApellidos(ape);
				vj.setFechaNacimiento(fecha);
				out.println("<p>Formato viejo: "+ vj.getFechaNacimiento() + "</p>");
				
				ViejaANuevaAdapter n = new ViejaANuevaAdapter(vj);
				
				out.println("<p>Formato nuevo: "+ n.getNombre() + " " + n.getEdad() +"</p>");
				
			}
			else {
				out.println("<p>Estan vacios</p>");
			}
			
		out.println("<p><a href = \"index.html\">Vuelta al indice<a/></p>");
		out.println("</body>");
		out.println("</html>");
		
	}

}
