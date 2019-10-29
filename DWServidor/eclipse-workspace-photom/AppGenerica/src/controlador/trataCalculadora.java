package controlador;

import modelo.Calculadora;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class trataCalculadora
 */
@WebServlet("/trataCalculadora")
public class trataCalculadora extends HttpServlet {
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Double opA= Double.parseDouble(request.getParameter("opA"));
		Double opB= Double.parseDouble(request.getParameter("opB"));
		String operando = request.getParameter("selectOp");
		Calculadora calc = new Calculadora(opA,opB,operando);
		//en el objeto request guardamos el objeto alumno, usamos el atributo atribAlumn para guardarlo
		request.setAttribute("atribCalc",calc);
		//con esta instruccion se hace un reenvio a traves de forward de los objetos request y response a muestraDatos.jsp
		request.getRequestDispatcher("/vistaMuestraCalc.jsp").forward(request, response);

	}

}
