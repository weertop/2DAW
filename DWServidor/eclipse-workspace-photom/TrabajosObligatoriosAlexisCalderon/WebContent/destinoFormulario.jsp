<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Confirmacion de cita</title>
<link rel="stylesheet" type="text/css" href="css/estilo2.css">
</head>
<body>
<%
	String nombres[] = {"Teo","Mercedes","Maite","Teresa","Pedro"};
	String dias[] = {"Lunes","Martes","Miercoles","Jueves","Viernes"};
	String horas[] = {"9:00","10:00","11:00","12:00"};	

	String nombre = request.getParameter("nombreS");
	String dia = request.getParameter("diaS");
	String hora = request.getParameter("hora");
	String obs = request.getParameter("obs");
	String enviar = request.getParameter("enviar");
	if(enviar!=null){%>
		<h2>Su cita será: </h2>
		<table border="2">
			<tr>
				<th>Nombre Docente:</th>
				<th>Dia:</th>
				<th>Hora:</th>
				<th>Observaciones:</th>
			</tr>
				<td><%=nombres[Integer.parseInt(nombre)]%></td>
				<td><%=dias[2]%></td>
				<td><%=horas[1]%></td>
				<td><%=obs%></td>
		</table>
	<%} %>
	<p><a href="FormularioTutoria.jsp">Ir al formulario otra vez</a>
</body>
</html>