ejeMasEjer<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.Persona" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Persona p1 = new Persona("983748X","Pepe");
		out.println("persona ->"+ "<h2>" + p1.toString() + "</h2>");
	
		out.println("<table>" + "<td>" + "<th>" + p1.getNombre() +  "</th>" + "<th>" + p1.getDni() +  "</th>" + "</td>" + "</table>");	
		
		p1.setNombre("Juancho");
		p1.setDni("34234324U");
		
		out.println("<table>" + "<td>" + "<th>" + p1.getNombre() +  "</th>" + "<th>" + p1.getDni() +  "</th>" + "</td>" + "</table>");
		
	%>
	
	<!-- De aqui para abajo es lo de la profe -->
	
	<%
		Persona p = new Persona("2342343","Maria");
	%>
	
	<table border="2">
		<td>
			<td>dni</td>
			<td>nombre</td>
		</td>
		<td>
			<td><%=p.getDni() %></td>
			<td><%=p.getNombre() %></td>
		</td>
	
	
	<% 
		p.setDni("12334");
		p.setNombre("Pepa");
	%>
	
		<td>
			<td><%=p.getDni() %></td>
			<td><%=p.getNombre() %></td>
		</td>
	
	</table>
	
	<h2><a href="index.html">Volver al menu</a></h2>
</body>
</html>