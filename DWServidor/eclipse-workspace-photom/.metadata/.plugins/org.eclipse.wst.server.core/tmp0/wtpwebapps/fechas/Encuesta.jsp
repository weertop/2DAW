<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.time.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	LocalTime tComienzo = LocalTime.now();
	out.println(tComienzo + "<br/>");
%>
<form action="destinoEncuesta.jsp" method="post">
	<input type="hidden" name="horaComienzo" value="<%=tComienzo%>"/>
	pon tu identificador:
	<input type="text" name="nombre" required/>
	Es HTTP un protoclo sin estado?
	<input type="text" name="respuesta" required/>
	<input type="submit" name="enviar" value="confirmar"/>
</form>
</body>
</html>