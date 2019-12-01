<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.time.*" %>
<%@ page import="DAO.Usuario,DAO.TrataArchivos" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		LocalTime tFin = LocalTime.now();
		
		Usuario us;
		String path="C:\\Users\\alexc\\eclipse-workspace-photom\\fechas\\WebContent\\WEB-INF\\rapido.txt";
		
		String nombre = request.getParameter("nombre");
		String respuesta = request.getParameter("respuesta");
		String horaComienzo = request.getParameter("horaComienzo");
		out.println(horaComienzo + "comenzaste la encuesta <br/>");
		//out.println(tFin + "<br/>");
		LocalTime inicio = LocalTime.parse(horaComienzo);							//ojo
		out.println(tFin + "terminaste la encuesta <br/>");
		
		
		long dif = Duration.between(inicio, tFin).getSeconds();						//para pasarlo a segundos
		
		
		out.println("tardaste " + dif + " segundos <br/>");
		if(respuesta.toLowerCase().equals("si")){
			us = TrataArchivos.readFile(path);
			if(us==null){									//si en el fichero no hay nadie
				out.println("Eres el primero en realizar la encuesta <br/>");
				Usuario nuevo = new Usuario(nombre,dif);
				TrataArchivos.reemplaza(nuevo,path);
			}else{											//si el nuevo es mas rapido creamos usuario y lo sustituimos
				if(us.getPromedio() > dif){
					Usuario nuevo = new Usuario(nombre,dif);
					TrataArchivos.reemplaza(nuevo, path);
				}												//else no haremos nada no actualizamos el archivo
			}
		}else{
			out.println("respuesta incorrecta");
		}
	%>
	<p><a href="Encuesta.jsp">Volver</a></p>
</body>
</html>