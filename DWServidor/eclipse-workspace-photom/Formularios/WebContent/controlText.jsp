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
	<%Date fecha = new Date();
	out.println("<p>" + fecha + "</p>");
	%>
	<form action="destinoContdolText.jsp" method="post">
		<p> Nombre: <input type="text" name="nombre" required/> </p>
		<p> Color: <input type="text" name="color" /> </p>
		<p> Correo: <input type="text" name="correo" /> </p>
		<p> <input type="reset" name="borrar" value="borrar" />	</p>
		<p> <input type="submit" name="enviar" value="enviar estos datos" /> </p> <!-- el value es lo que se enviara -->
	</form>
	
	<p><a href="index.jsp">Volver al indice</a></p>
</body>
</html>