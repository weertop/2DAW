<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.time.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	LocalTime t = LocalTime.now();
	out.println("<h3>Fecha: " + t + "</h3>");
%>
<ul>
	<li><a href="listarArchivo">Listar archivos de cambio</a></li>
	<li><a href="llamarAVistaDatos">añadir datos al archivo</a></li>
</ul>
</body>
</html>