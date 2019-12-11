<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="resuelvePersonasAdapter" method="post">
		<p>Nombre: <input type="text" name="nombre" required/></p>
		<p>Apellidos: <input type="text" name="apellidos" required/></p>
		<p>Fecha: <input type="text" name="fecha" required/></p>
		<p><input type="submit" name="enviar" value= "Enviar" /></p>
	</form>
<!-- Formato nombre:edad
			 nombre:ap:fecha
	personas.txt
	pepe,perez:20
	ana maria,sanchez:31
	mar:lopez sanz:2000-03-23
	arturo:camacho:1998-09-09
-->
</body>
</html>