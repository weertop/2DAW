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
	<%
		String[] hoteles = {"Ritz","Eurostar","Hilton"};
	%>

	<h1>Reserva De Hotel</h1>
	<form action="destinoHotel.jsp" method="post">
		<% 
		//usar select
		for(int i=0;i<hoteles.length;i++){%>
			<input type="radio" name="hotel" value="<%=hoteles[i]%>" checked/><%=hoteles[i]%><br/>
		<%} %>
		
		<p>Nombre: <input type="text" name="nombre" required/></p>
		<p>DNI: <input type="text" name="dni" required/></p>
		<p>Numero de dias: <input type="number" name="dias" required/></p>
		
		<p>Regimen: </p>
		<input type="radio" name="tipo" value="alojamiento"/>Alojamiento<br/>
		<input type="radio" name="tipo" value="aloydesayuno"/>Alojamiento mas desayuno<br/>
		
		<p>Extdas: </p>
		<input type="checkbox" name="parking" value="parking"/>parking<br/>
		<input type="checkbox" name="gym" value="gym"/>gym<br/>
		<input type="checkbox" name="caja" value="caja"/>caja fuerte<br/>
		
		<p> <input type="reset" name="borrar" value="borrar" />	</p>
		<p> <input type="submit" name="enviar" value="enviar estos datos" /> </p> <!-- el value es lo que se enviara -->
	</form>
</body>
</html>