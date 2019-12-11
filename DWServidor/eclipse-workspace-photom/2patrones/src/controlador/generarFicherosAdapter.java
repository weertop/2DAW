package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import adapter.Archivo;
import adapter.PersonaVieja;
import adapter.ViejaANuevaAdapter;


@WebServlet("/generarFicherosAdapter")
public class generarFicherosAdapter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String fNuevo = "C:\\Users\\alexc\\eclipse-workspace-photom\\2patrones\\WebContent\\ficheroNuevo.txt";
		Archivo aFNuevo = new Archivo(fNuevo);
		String fViejo = "C:\\Users\\alexc\\eclipse-workspace-photom\\2patrones\\WebContent\\ficheroViejo.txt";
		Archivo aFViejo = new Archivo(fViejo);
		Archivo a = new Archivo("C:\\Users\\alexc\\eclipse-workspace-photom\\2patrones\\WebContent\\personas.txt");
		ArrayList<String> personas = a.leerArchivo();
		String linea;
		
		
		
		try {
			out.println("<DOCTYPE html>");
			out.println("<head>");
			out.println("<title> lectorEscritor </title>");
			out.println("</head>");
			out.println("<body>");
			for(int i=0;i<personas.size();i++) {
				linea = personas.get(i);
				out.println("<p>" + linea + "</p>");
				String[] sep = linea.split(":");
				if(sep.length == 2) {
					aFNuevo.add(linea);
				}else {					
					PersonaVieja pv = new PersonaVieja();
					
					pv.setNombre(sep[0]);
					pv.setApellidos(sep[1]);
					LocalDate fNueva = LocalDate.parse(sep[2]);
					pv.setFechaNacimiento(fNueva);
					
					ViejaANuevaAdapter vna = new ViejaANuevaAdapter(pv);
					String nombre = vna.getNombre();
					int edad = vna.getEdad();
					String lineaGuardar = nombre + ":" + edad;
					
					aFViejo.add(linea);
					aFNuevo.add(lineaGuardar);
				}
			}
			out.println("<p>Guardado en los ficheros!</p>");
			out.println("<p><a href=\"index.html\">Vuelta al indice<a/></p>");
			out.println("</body>");
			out.println("</html>");
		} finally {
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
