<!-- USA HORA -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.time.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>
<%
	LocalTime t = LocalTime.now();					//ojo sin NEW
	out.println(t);
%>
</p>
<h1>Servicio de calculo</h1>
<form action="resuelveCalculo" method="post">
	<input type="number" name="op1" min="0" step="0.1"/>
	<select name="operacion">
			 <option value="+">+</option>
			 <option value="-">-</option>
			 <option value="*">*</option>
			 <option value="/">/</option>
	</select>
	<input type="number" name="op2" min="0" step="0.1"/>
	<input type="submit" name="enviar" value="calcula"/>
	<input type="submit" name="borrar" value="limpiar"/>
</form>
</body>
</html>