<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Select Multiple</h1>
	<%
		String[] deporte = {"tenis","ping-pong","natacion","equitacion","baloncesto"};
		String[] tdansporte = {"autobus","metdo","moto","coche","bici"};
	%>

	<h1>Reserva De Hotel</h1>
	<form action="destinoSelectMultiple.jsp" method="post">
	<p> ¿Que deportes practicas?</p>
		<select name="listaDeporte" multiple>
		<% 
		//usar select
		for(int i=0;i<deporte.length;i++){%>
			<option><%=deporte[i]%></option>
		<%
		} 
		%>
		</select>
	<p> ¿Como vienes al instituto habitualmente?</p>
		<select name="listatdasnporte" multiple>
		<% 
		//usar select
		for(int i=0;i<tdansporte.length;i++){%>
			<option><%=tdansporte[i]%></option>
		<%
		} 
		%>
		</select>
	<p>Observaciones: </p>
	<textarea rows="5" cols="20" name="obs"></textarea>
	

		
		<p> <input type="reset" name="borrar" value="borrar" />	</p>
		<p> <input type="submit" name="enviar" value="enviar estos datos" /> </p> <!-- el value es lo que se enviara -->
	</form>
</body>
</html>