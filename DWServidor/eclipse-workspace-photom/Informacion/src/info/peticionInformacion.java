//Servlet que puede mostrar informacion en una pagina WEB por si solo sin usar JSP

package info;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class peticionInformacion
 */
@WebServlet("/peticionInformacion")
public class peticionInformacion extends HttpServlet {
	
	//metodo general llamado igual que creamos para procesar nuestros datos, debemos cambiar las llamadas doGet y doPost por nuetro metodo
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=UTF-8");			//nuestra respuesta va ser en forma de html y con UTF8
		PrintWriter out = response.getWriter();						//toma todo lo que escribimos para enviarlo con esta tuberia
		try {
			out.println("<!DOCTYPE html><head><title> Informacion </title></head>");
			out.println("<body>");
			out.println("<p>Nombre del servidor</p>");
			out.println("<p>" + request.getServerName() + "</p>");
			out.println("<p>Puerto del servidor local</p>");
			out.println("<p>" + request.getLocalPort() + "</p>");
			out.println("<p>Puerto del servidor</p>");
			out.println("<p>" + request.getServerPort() + "</p>");
			out.println("<p>Nombre de la aplicacion en el servidor</p>");
			out.println("<p>" + request.getContextPath() + "</p>");
			out.println("<p>Identificacion del servlet</p>");
			out.println("<p>" + request.getServletPath() + "</p>");
			out.println("<p>Nombre del metodo de la peticion</p>");
			out.println("<p>" + request.getMethod() + "</p>");
			out.println("<p>parametros de la peticion</p>");
			out.println("<p>" + request.getQueryString() + "</p>");				//para ver los parametros que nos pasan
			out.println("<p>Direccion IP</p>");
			out.println("<p>" + request.getLocalAddr() + "</p>");
			out.println("</body>");
			out.println("</html>");
		}finally {
			out.close();
		}
	}
	
	// ojo que cambia el get y el post para ejecutar nuestrp metodo
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

}
