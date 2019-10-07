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
	<%! double numero = (double)(Math.random()*100); %>
	<p> El numero generado es: 
	<%= numero %>
	</p>
	<% Random rd=new Random();
	int n=rd.nextInt(50);
	out.println("<h1>" + n + "</h1");
	%>
	<h2><a href="index.html">Volver al menu</a></h2>
</body>
</html>