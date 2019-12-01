package controlador;

import modelo.Piramide;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class trataDatos
 */
@WebServlet("/trataDatos")
public class trataDatos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   private int base;
   private String img;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		base = Integer.parseInt(request.getParameter("base"));
		img = request.getParameter("imagen");
		
		Piramide p = new Piramide(base,img);
		request.setAttribute("atribPiramide", p);
		request.getRequestDispatcher("/muestraPiramide.jsp").forward(request, response);
	}

}
