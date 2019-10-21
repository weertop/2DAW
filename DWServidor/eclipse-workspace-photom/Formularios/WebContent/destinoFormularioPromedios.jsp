<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DAO.Archivos,DAO.Alumno"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String nombre=request.getParameter("nombre");
	String apellidos=request.getParameter("apellidos");
 	String promedio=request.getParameter("promedio");
 	nombre = nombre.trim();
 	apellidos = apellidos.trim();
 	if(!nombre.isEmpty() && !apellidos.isEmpty()){
 		Alumno al = new Alumno(nombre, apellidos, Double.parseDouble(promedio));
 		String path = "C:\\Users\\alexc\\eclipse-workspace-photom\\Formularios\\WebContent\\WEB-INF\\promediosAlumnos.txt";
 		Archivos.add(al, path);			//funciona porque Archivos es de tipo statico
 	}else{
 		out.println("<p> Datos incorrectos </p>");
 	}
%>
<p><a href="formularioPromedios.jsp">Volver al formulario</a></p>
</body>
</html>