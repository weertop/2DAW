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
	//int i=0;
	String[] tamanio = {"50px","100px","200px"};
	String[] tamPalabras = {"pequeno","mediano","grande"};
	String recibido = request.getParameter("usuEscoge");
	String usuDebiaBuscar = request.getParameter("debiaBuscar");
	
	if(recibido.equals(tamanio[0]) && usuDebiaBuscar.equals(tamPalabras[0])){
		out.println("<h2>Correcto </h2>");
	}else if(recibido.equals(tamanio[1]) && usuDebiaBuscar.equals(tamPalabras[1])){
		out.println("<h2>Correcto </h2>");
	}else if(recibido.equals(tamanio[2]) && usuDebiaBuscar.equals(tamPalabras[2])){
		out.println("<h2>Correcto </h2>");
	}else{
		out.println("<h2>Incorrecto xaval </h2>");
	}
	%>
	<a href="tamanioDisc.jsp">Volver</a>
	<p><a href="indice.html">Volver al indice</a></p>
</body>
</html>