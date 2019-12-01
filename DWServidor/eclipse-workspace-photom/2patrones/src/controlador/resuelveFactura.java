package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import factory2.FactoryFacturas;
import factory2.Factura;

/**
 * Servlet implementation class resuelveFactura
 */
@WebServlet("/resuelveFactura")
public class resuelveFactura extends HttpServlet {

	private int id;
	private double importe;
	private String tipo;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		id = Integer.parseInt(request.getParameter("id"));
		importe = Double.parseDouble(request.getParameter("importe"));
		tipo = request.getParameter("tipo");		
		
		Factura f = FactoryFacturas.getFactura(tipo);
		f.setId(id);
		f.setImporte(importe);
		request.setAttribute("atribFactura", f);
		request.getRequestDispatcher("/muestraFactura.jsp").forward(request, response);
		
	}

}
