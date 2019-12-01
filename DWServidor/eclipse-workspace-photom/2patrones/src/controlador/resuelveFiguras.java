package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import factory.FactoryFigura;
import factory.Figura;

/**
 * Servlet implementation class resuelveFiguras
 */
@WebServlet("/resuelveFiguras")
public class resuelveFiguras extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   String fig;
   int medida;
   String color;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		fig = request.getParameter("fig");
		color = request.getParameter("color");
		medida = Integer.parseInt(request.getParameter("medida"));
		Figura f = FactoryFigura.getFigura(fig);
		
		f.setMedida(medida);
		f.setColor(color);
		request.setAttribute("atribFigura", f);
		request.getRequestDispatcher("/muestraFigura.jsp").forward(request, response);
	}

}
