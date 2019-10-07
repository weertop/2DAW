<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Persona p1 = new Persona("327846Q","Juancho");
		Departamento d1 = new Departamento("Marketing",p1);
	%>
	
	<table border="2">
		<tr>
			<td>Nombre Departamento</td>
			<td>Dni Jefe</td>
			<td>Nombre</td>
			<td>Dni persona</td>
		</tr>
		<tr>
			<td><%= d1.getNombreDep() %></td>
			<td><%= d1.getJefe().getDni()%></td>
			<td><%= p1.getNombre() %></td>
			<td><%= p1.getDni() %></td>
		</tr>
	</table>
	
	<p> El departamento <%= d1.getNombreDep() %> es dirigido por : 
		<%
			if(d1.getJefe().getDni() != null){
				if(d1.getJefe().getDni().equals(p1.getDni())){
					out.println("Es dirigido por: " + p1.getNombre());
				}else{
					out.println("Esta dirigido por un desconocido");
				}
			}
		%>
	</p>
	
	<h2><a href="index.html">Volver al menu</a></h2>
	
</body>
</html>