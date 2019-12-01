//otro servlet usado de ejemplo para la llamada desde el JSP en este caso

package info;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class cabecera
 */
@WebServlet("/cabecera")
public class cabecera extends HttpServlet {

	//metodo general llamado igual que creamos para procesar nuestros datos, debemos cambiar las llamadas doGet y doPost por nuetro metodo
		protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
			response.setContentType("text/html;charset=UTF-8");			//nuestra respuesta va ser en forma de html y con UTF8
			PrintWriter out = response.getWriter();						//toma todo lo que escribimos para enviarlo con esta tuberia
			String nbCabecera = null;									
			Enumeration nombresCabecera = null;							//nombre de las cabeceras
			Enumeration valorCabecera = null;							//valores de las cabeceras
			
			try {
				out.println("<!DOCTYPE html><head><title> Informacion </title></head>");
				out.println("<body>");
				nombresCabecera = request.getHeaderNames();				//devuelve un string con los nombres de las cabeceras
				out.println("<table border=\"1\">");
				while(nombresCabecera.hasMoreElements()) {
					nbCabecera = (String) nombresCabecera.nextElement();
					out.println("<tr>");
					out.println("<td>" + nbCabecera + "</td>");
					valorCabecera = request.getHeaders(nbCabecera);		//para obtener los valores de las cabeceras y lo metemos en un tipo enumerado
					while(valorCabecera.hasMoreElements()) {
						out.println("<td>" + valorCabecera.nextElement() + "</td>");
					}
					out.println("</tr>");
				}
				out.println("</table>");
				out.println("</body>");
				out.println("</html>");
			}finally {
				out.close();
			}
		}
		
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			processRequest(request, response);
		}


		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			processRequest(request, response);
		}

}
