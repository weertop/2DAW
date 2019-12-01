<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Piramide de fotografias</h1>
	<form action="trataDatos" method="post">
	<h2>Selecciona el tamaño de la base</h2>
	<input type="number" name="base" step="1" min="1" required/>
	<h2>Selecciona de que imagen quieres la piramide</h2>
	<%for (int i = 1 ; i<=5;i++){
		%>
	<button type="submit" name="imagen" value="<%=i%>" ><img src="Imagenes/<%=i%>.jpg" width="50"/></button>
	<%} %>
	</form>
</body>
</html>