<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.text.*" %>
<%@ page import="DAO.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hoteles</title>
</head>
<body>
	<%
		Datos d=new Datos();
		ArrayList<hotel> listaHoteles = d.devolverDatos();
	%>
	
	<h1>Reserva De Hotel</h1>
	<form action="destinoHotelesArraylist.jsp" method="post">
		<select name="hotel" required>
		<%
			for(int i=0;i<listaHoteles.size();i++){
				%>
				<option value="<%=i%>" selected><%=listaHoteles.get(i).getNombre()%></option>
			<%}
		%>
		</select>
		
			<p>Nombre: <input type="text" name="nombre" required /></p>
		<p>DNI: <input type="text" name="DNI" required/></p>
		
		<p>Selecciona el numero de dias</p>
		<select name="dias" required>
			<%
	for (int i=1;i<7;i++){
	%>	
		<option value="<%=i%>" selected><%=i%></option>
	<%} %>
		</select>
		<select name="Regimen" required>
			<option value="A">Solo Alojamiento</option>
			<option value="AD" Selected >Alojamiento y desayuno</option>
		</select>
		<p>EXtdAS</p>
		<p>Parking interior: <input type="checkbox" name="parking" value="parking"/></p>
		<p>Jacuzzi: <input type="checkbox" name="jacuzzi" value="jacuzzi" /></p>
		<p>Gimnasio: <input type="checkbox" name="gym" value="gym" /></p>
	<input type="submit" name="enviar" value="enviar"/>
	</form>
	
</body>
</html>