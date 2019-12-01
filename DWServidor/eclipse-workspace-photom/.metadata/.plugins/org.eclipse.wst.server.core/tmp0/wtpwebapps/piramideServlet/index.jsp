<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="modelo.Archivo,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Archivo a = new Archivo("C:\\Users\\alexc\\eclipse-workspace-photom\\piramideServlet\\WebContent\\imagenes");
ArrayList<String> miLista = a.dameFicherosImg();
%>
<h1>Piramide de imagenes</h1>
<form action="trataDatos" method="post"> 
	<h2>Selecciona el tamano base</h2>
	<input type="number" name="base" step="1" min="1" requiered/>
	<h2>Selecciona una imagen</h2>
	<%for(int i=0;i<miLista.size();i++){%>
		<button type="submit" name="imagen" value="<%=miLista.get(i)%>">
			<img src="imagenes/<%=miLista.get(i)%>" width="30">
		</button>
	<%}%>	
</form>
</body>
</html>