package info;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class lecturaDeParametros
 */
@WebServlet("/lecturaDeParametros")
public class lecturaDeParametros extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Esqueleto response,PrintWriter, try,doctype,body,html,finally
		
		response.setContentType("text/html;charset=UTF-8");			//nuestra respuesta va ser en forma de html y con UTF8
		PrintWriter out = response.getWriter();						//toma todo lo que escribimos para enviarlo con esta tuberia
		try {
			out.println("<!DOCTYPE html><head><title> Informacion </title></head>");
			out.println("<body>");
			
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
		doGet(request, response);
	}

}
