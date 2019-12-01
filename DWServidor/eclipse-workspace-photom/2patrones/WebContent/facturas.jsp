<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="factory2.*,java.time.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%LocalDate l = LocalDate.now(); %>

<form action="resuelveFactura" method="post">
	<p>Id
		<input type="number" name="id" min="0" step="1" required/>
	</p>
	<p>Elige Factura
		<select name="tipo" request>
			<option value="normal">Normal [14%]</option>
			<option value="reducido">Reducido [7%]</option>
			<option value="super">Super Reducido [2%]</option>
		</select>
	</p>
	<p>Importe
		<input type="number" name="importe" min="0" step="0.1" required/>
	</p>
	<p><input type="submit" name="enviar" value="enviar" />
	</p>
</form>
</body>
</html>