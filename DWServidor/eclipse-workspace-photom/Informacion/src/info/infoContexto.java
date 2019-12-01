//Usamos getServletConetext(), GetRealPath para TRABAJAR CON UN FICHERO

package info;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class infoContexto
 */
@WebServlet("/infoContexto")
public class infoContexto extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out= response.getWriter();
		
		ServletContext contexto=request.getServletContext();
		
		File f= new File(contexto.getRealPath("fichero.txt"));						//con esto conseguimos evitar escribir rutas enteras por relativas
		BufferedReader lectorCadenas= new BufferedReader(new FileReader(f));
		String mensaje=lectorCadenas.readLine();
		lectorCadenas.close();
		try{
				out.println("<html>");
				out.println("<head>");
				out.println("<title> info</title>");
				out.println("</head>");
				out.println("<body>");

				String[] palabras = mensaje.split(":");
				for(String pal : palabras) {
					out.println("<p>" + pal + "</p>");
				}
			
				out.println("</body>");
				out.println("</html>");
				
				
		}
		finally {
			out.close();
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
