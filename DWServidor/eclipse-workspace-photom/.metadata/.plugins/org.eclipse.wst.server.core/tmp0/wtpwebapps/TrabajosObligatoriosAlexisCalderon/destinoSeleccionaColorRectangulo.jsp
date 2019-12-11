<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	String recibido = request.getParameter("usuEscoge");
	String usuDebiaBuscar = request.getParameter("debiaBuscar");
	
	if(recibido.equals(usuDebiaBuscar)){
		out.println("<h2>Correcto </h2>");
	}else{
		out.println("<h2>Incorrecto xaval </h2>");
	}
	%>
	<a href="seleccionaColoresRectangulo.jsp">Volver</a>
	<p><a href="indice.html">Volver al indice</a></p>
</body>
</html>