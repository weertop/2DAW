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
	int valA = rd.nextInt(10);
	int valB;
	do{
		valB = rd.nextInt(10);
	}while(valB > valA || valA==0);
%>
	<h2>Escriba el resultado de la siguiente division:</h2>
	<form action="destinoAdivinaMultiplicacion.jsp" method="post">
	<table>
		<tr>
			<th><strong><%=valA%></strong></th>
			<th><strong> * </strong></th>
			<th><strong><%=valB%></strong></th>
		</tr>
		<tr>
			<td>Signo <input type="text" name="usuA" required/></td>
			<td></td>
			<td>Resultado <input type="text" name="usuB" required/></td>
		</tr>
	</table>
	<input type="hidden" name="alA"	value="<%=valA%>"/>
	<input type="hidden" name="alB"	value="<%=valB%>"/>
	<input type="submit" name="enviar" value="Comprobar"/>
	<input type="reset" name="limpiar" value="Borrar"/>
	</form>
</body>
</html>