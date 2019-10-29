<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="modelo.Calculadora" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Calculadora calculadora = (Calculadora) request.getAttribute("atribCalc");
%>
<h2> Aqui se despliegan los datos que envió el servlet</h2>
<p> Tus datos son los siguientes: </p>
<table border="3">
<tr>
<td>Resultado: </td>
<td><%=calculadora.operacion(calculadora.getOpA(), calculadora.getOpB(), calculadora.getOperador())%></td>
</tr>
</table>
<form action="indexCalculadora.jsp" method="post">
<input type="submit" value="Regresar">
</form>
</body>
</html>