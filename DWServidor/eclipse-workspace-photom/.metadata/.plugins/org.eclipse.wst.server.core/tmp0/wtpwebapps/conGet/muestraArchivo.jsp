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
	Archivo archivo = (Archivo) request.getAttribute("atribArchivo");
	ArrayList<String> misDatos = archivo.leerArchivo();
%>
<h1>Aqui se despliegan los datos que envio el servlet</h1>
<table border="2">
	<%for(int i=0;i<misDatos.size();i++){%>
		<tr>
			<td><%=misDatos.get(i)%></td>
		</tr>
	<%}%>
</table>
<p><a href="index.jsp">Volver al indice</a></p>
</body>
</html>