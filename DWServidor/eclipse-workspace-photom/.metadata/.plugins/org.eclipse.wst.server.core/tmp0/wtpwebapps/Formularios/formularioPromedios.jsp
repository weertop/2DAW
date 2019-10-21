<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="destinoFormularioPromedios.jsp" method="post">
	<p>nombre: <input type="text" name="nombre" required/></p>
	<p>apellidos: <input type="text" name="apellidos" required/></p>
	<p>promedio: <input type="number" name="promedio" step="0.1" required/></p>		<!--  OJO A COMO SE PONE DE 1 EN 1 -->
	<p><input type="submit" name="enviar" value="enviar datos" /></p>
</form>
</body>
</html>