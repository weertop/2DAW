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
	String usuDebiaBuscarForma = request.getParameter("debiaBuscarForma");
	String usuDebiaBuscarColor = request.getParameter("debiaBuscarColor");
	
	String separadoFormaColor[] = recibido.split(":");
	
	if(separadoFormaColor[0].equals(usuDebiaBuscarForma) && separadoFormaColor[1].equals(usuDebiaBuscarColor)){
		out.println("<h2>Correcto </h2>");
	}else{
		out.println("<h2>Incorrecto xaval </h2>");
	}
	%>
	<a href="seleccionaFormaColor.jsp">Volver</a>
</body>
</html>