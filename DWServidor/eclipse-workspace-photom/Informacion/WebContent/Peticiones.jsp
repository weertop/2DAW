<!-- Usaremos este JSP para pasarselo al Servlet aunque como lo vimos el servlet puede mostrar elementos HTML por si solo -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<ul>
	<!-- Asi se pasan datos por medio de GET con el nombre del servlet(direccion) ? y las variables con sus valores -->
	<li><a href="peticionInformacion?v1=viernes&v2=10">Informacion general</a></li>
	<li><a href="cabecera">Informacion general sobre cabecera</a></li>
	<li><a href="reader.html">Informacion general sobre cabecera desde reader hacia servletReader con POST</a></li>
	<li><a href="formulario.jsp">Informacion general sobre PeticionInformacion desde formulario hacia peticionInformacion con POST no se pueden ver los paramtros con con GET</a></li>
	<li><a href="lecturaDeParametros?v1=9&v2=hola">Leer parametros version 1 pasados por GET</a></li>
	<li><a href="lecturaDeParametrosV2?v1=dia&v2=mes&v1=sol">Leer parametros version 2 pasamos 2 valores V1 usaremos un Enumerado para recibirlo en el servlet</a></li>
	<li><a href="formulario2.jsp">Permite guardar el nombre y clave que le pasamos por POST al servlet en un FICHERO usando direcciones reales y ARCHIVO</a></li>
</ul>
</body>
</html>