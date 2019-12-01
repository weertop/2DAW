<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="modelo.Usuario,java.util.*,java.time.LocalDate"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Usuario usu = (Usuario) request.getAttribute("atribTema");
	LocalDate fecha = LocalDate.now();
%>
<table border="2">
	<tr>
		<td colspan="2"><%=fecha%></td>
	</tr>
	<tr>
		<td><img src="<%=usu.getTema()%>" alt="imagen"/></td>
		<td><%=usu.getComentario()%></td>
	</tr>
	<tr>
		<td><%=usu.getNombre()%></td>
		<td><%=usu.getApellidos()%></td>
	</tr>
</table>
</body>
</html>