//servlet que trabaja con el html reader mediante metodo POST y pasa 2 datos

package info;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class servletReader
 */
@WebServlet("/servletReader")
public class servletReader extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		try {
			BufferedReader br = request.getReader();
			String bodyRecibido = "";
			String cadena;
			
			while((cadena = br.readLine()) != null) {
				bodyRecibido+=cadena;
			}
			
			out.println("<!DOCTYPE html><head><title> getReader </title></head>");
			out.println("<body><h2>");
			out.println(bodyRecibido + "</h2></body></html>");								//tenemos body como la variable de cadena
			
		}finally {
			out.close();
		}
	}

}