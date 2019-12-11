<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="command.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Command comando1 = null;
	Command comando2 = null;
	
	comando1 = new ArrancarServer(new ChileServer());
	comando2 = new ArrancarServer(new SpainServer());
	
	out.println(comando1.execute());
	out.println(comando2.execute());
	
	comando1 = new ApagarServer(new ChileServer());
	
	out.println(comando1.execute());
	
	comando1 = new ResetServer(new ChileServer());
	
	out.println(comando1.execute());
%>
</body>
</html>