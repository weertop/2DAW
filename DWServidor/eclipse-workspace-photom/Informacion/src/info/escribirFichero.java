package info;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Archivo;

/**
 * Servlet implementation class escribirFichero
 */
@WebServlet("/escribirFichero")
public class escribirFichero extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");					//ojo a esto se debe especificar el formato UTF-8 para que no de problemas
		response.setContentType("text/html;charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		ServletContext contexto = request.getServletContext();		//aqui intentaremos guardar en el fichero pero debera ser el fichero real y no el que se crea en el servidor tomcat durante la ejeccion
		
		String ficheroDireccionReal = "\\WebContent\\ficheroEscrituraReal.txt";	//direccion real del fichero donde queremos que se guarde
		String pathRelativo=request.getContextPath();
		String pathReal = contexto.getRealPath(ficheroDireccionReal);			//obtenemos el path real del fichero creado

		String pathAutenticoDisco=pathReal.substring(0,pathReal.indexOf('.')) + pathRelativo.substring(1) + ficheroDireccionReal;	//Extrae la direccion real del Path quitando lo de .plugin etc etc
		Archivo a=new Archivo(pathAutenticoDisco);
		
		String lineaTexto = request.getParameter("nombre") + ":" + request.getParameter("clave");	//escribir en el fichero creamos la linea
		a.add(lineaTexto);													//agrega linea al archivo
		
		try {
			out.println("<!DOCTYPE html><head><title> Informacion </title></head>");
			out.println("<body>");
			
			out.println("<p>" + pathRelativo + "</p>");
			out.println("<p>" + pathReal + "</p>");								//direccion de la copia de tomcat en el servidor Debemos cortar todo lo que trae referente al servidor .plugin.blabla y dejar las direcciones como antes C://User/.........
			out.println("<p>" + pathAutenticoDisco + "</p>");					//direccion recortada para dejar la de la real
			out.println("<p>" + "linea añadida" + "</p>");
			
			out.println("</body>");
			out.println("</html>");
		}finally {
			out.close();
		}
		
	}

}
