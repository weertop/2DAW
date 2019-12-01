<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="modelo.Operacion" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
 Operacion nueva = (Operacion)request.getAttribute("atributeOperacion");
%>
<p><%=nueva.toString()%></p>
<p><a href="indexCalc.jsp">mas Operaciones</a>
</body>
</html>