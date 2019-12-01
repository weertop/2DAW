//Recibe 2 parametros para un mismo valor se guardan en un enumeration

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
 * Servlet implementation class lecturaDeParametrosV2
 */
@WebServlet("/lecturaDeParametrosV2")
public class lecturaDeParametrosV2 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Esqueleto response,PrintWriter, try,doctype,body,html,finally
		
				response.setContentType("text/html;charset=UTF-8");			//nuestra respuesta va ser en forma de html y con UTF8
				PrintWriter out = response.getWriter();						//toma todo lo que escribimos para enviarlo con esta tuberia
				
				Enumeration nombresParametros = null;						//enumerado para v1
				String nombreParam=null;
				
				try {
					out.println("<!DOCTYPE html><head><title> Informacion </title></head>");
					out.println("<body>");
					
					nombresParametros = request.getParameterNames();		//obtiene todos los parametros
					while(nombresParametros.hasMoreElements()) {
						nombreParam = (String) nombresParametros.nextElement();
						out.println("<h2>" + nombreParam);
						
						String[] valoresParam = request.getParameterValues(nombreParam);	//obtiene los valores
						for(String nombre : valoresParam) {
							out.println("<p>" + nombre + "</p>");
						}
						out.println("</h2>");
					}
					
					out.println("<h2>" + "Esto ocurre si hacemos un getParamter de v1 y v2 como antes sin un enumerado" + "</h2>");
					
					out.println("<ul>");
					out.println("<li>" + request.getParameter("v1"));
					out.println("</li>");
					out.println("<li>" + request.getParameter("v2"));
					out.println("</li>");
					out.println("</ul>");
					
					out.println("</body>");
					out.println("</html>");
				}finally {
					out.close();
				}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
