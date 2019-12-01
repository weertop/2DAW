package controlador;

import modelo.Operacion;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class resuelveCalculo
 */
@WebServlet("/resuelveCalculo")
public class resuelveCalculo extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private double op1;
	private double op2;
	private char operacion;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		op1 = Double.parseDouble(request.getParameter("op1"));
		op2 = Double.parseDouble(request.getParameter("op2"));
		operacion = request.getParameter("operacion").charAt(0);
		
		Operacion miOperacion = new Operacion(op1,op2,operacion);
		request.setAttribute("atributeOperacion", miOperacion);
		request.getRequestDispatcher("/vistaMuestraResultado.jsp").forward(request, response);
	}

}
