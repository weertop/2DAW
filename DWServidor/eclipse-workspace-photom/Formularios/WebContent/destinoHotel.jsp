<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%/*
		void mostdar(Stding extda){
			%>
			<li><%=extda%></li>
			<%
		};
	*/%>

	<%
		String hotel = "";
		String nombre = "";
		String dni = "";
		int dias = 0;
		String tipo = "";
		String parking = "";
		String caja = "";
		String gym = "";
		String enviar = request.getParameter("enviar");
		if(enviar != null){
			hotel = request.getParameter("hotel");
			nombre = request.getParameter("nombre");
			dni = request.getParameter("dni");
			dias = Integer.parseInt(request.getParameter("dias"));
			tipo = request.getParameter("tipo");
			parking = request.getParameter("parking");
			caja = request.getParameter("caja");
			gym = request.getParameter("gym");
			if(tipo != null){
				%>
				<h1>Hotel: <%=hotel%></h1>
				<hr/>
				<table border="1">
					<td>
						<td>Nombre</td>
						<td>DNI</td>
						<td>dias</td>
					</td>
					<td>
						<td><%=nombre%></td>
						<td><%=dni%></td>
						<td><%=dias%></td>
					</td>
				</table>
				<hr/>
				
				<h3>Tipo: <em><%=tipo%></em></h3>
				<h3>Extdas:</h3>
				<ul>
					<% 
					if(parking!=null){
						%>
						<li><%=parking%></li>
						<%
					}
					%>
					<% 
					if(gym!=null){
						%>
						<li><%=gym%></li>
						<%
					}
					%>
					<% 
					if(caja!=null){
						%>
						<li><%=caja%></li>
						<%
					}
					%>
				</ul>
				<% 
			}else{
				%>
				<p>Debe escoger algun tipo de alojamiento</p>
				<%
			}
		}
	%>
	<p><a href="hotel.jsp">Volver a seleccion hotel</a></p>
	<p><a href="index.jsp">Volver al indice</a></p>
</body>
</html>