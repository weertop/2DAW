<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="factory.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	Figura f = (Figura) request.getAttribute("atribFigura");
%>
	<h1>Mostrando la figura</h1>
	<svg xmlns="http://www.w3.org/2000/svg" height="400px" width="400px">
		<!-- Los <> de fuera son por que son los que rodean a la figura -->
		<<%=f.dibuja()%>>
	</svg>
</body>
</html>