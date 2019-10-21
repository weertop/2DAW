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
<%
	Random rd = new Random();
	String colores[] = {"green","red","violet","blue"};
	int ale = rd.nextInt(colores.length);
	String color = colores[ale];
%>
	<svg xmlns="http://www.w3.org/2000/svg"  height="250px" width="250px">
	<rect x="50" y="50" width="200px" height="200px" stroke="green" stroke-width=2 fill="<%=color%>"/>
	</svg>

	
</body>
</html>