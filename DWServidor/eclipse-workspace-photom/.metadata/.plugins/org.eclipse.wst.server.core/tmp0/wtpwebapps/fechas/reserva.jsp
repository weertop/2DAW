<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="destinoReservaTime.jsp" method="post">
		<p> Ingrese fecha inicial </p>
		<input type="date" name="entrada" required/>
		<p> Ingrese hora entrada</p>
		<input type="time" name="horaEntrada" required/>
		<p> Ingrese fecha final </p>
		<input type="date" name="salida" required/>
		<p> Ingrese hora salida </p>
		<input type="time" name="horaSalida" required/>
		
		<input type="submit" name="enviar" value="conforma" />
	</form>
</body>
</html>