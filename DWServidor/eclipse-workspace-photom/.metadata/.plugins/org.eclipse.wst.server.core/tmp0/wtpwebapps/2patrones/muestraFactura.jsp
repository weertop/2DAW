<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.time.*,factory2.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	LocalDate l = LocalDate.now();
	Factura f = (Factura) request.getAttribute("atribFactura");
%>
	<h1>Mostrando la figura</h1>
	<p>Fecha emision de factura <%=l.toString()%></p>
	<p>Identificador <%=f.getId()%></p>
	<p>Importe de la factura <%=f.getImporte()%></p>
	<p>Total a pagar <%=f.getImporteIva()%></p>
	<p><a href="index.html">Volver al indice</a></p>
</body>
</html>