<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="Modelo.Piramide,java.util.*"%>
	<%
	
	Piramide p = (Piramide)request.getAttribute("atribPiramide");
	int base = p.getBase();
	
	
	%>

	
	<div align="center">
	<h1>Tu piramide</h1>
		
		<%
	
	for(int i = 1; i < (base+1); i++){ %> 
		<div align="center"> 
		<% for(int j = 0; j < i; j++){ %> 
			<img src="Imagenes/<%=p.getNumImg()%>.jpg" width="100"/>
		<% } %> 
		</div> 
		<br/> 
	<% } %>
	</div>
</body>
</html>