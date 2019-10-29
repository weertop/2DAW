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
<%@ page import="modelo.Alumno" %>
<%
	Alumno alumno = (Alumno)request.getAttribute("atribAlumn");			//importamos los datos del formulario como objeto que lo pasamos
	alumno.modificaPromedio(5);
%>
<h2> Aqui se despliegan los datos que envió el servlet</h2>
<p> Tus datos son los siguientes: </p>
<table border="3">
<tr>
<td> Te llamas: </td>
<td><%=alumno.getNombre()%></td>
</tr>
<tr>
<td> Tus apellidos: </td>
<td> <%=alumno.getApellidos()%> </td>
</tr>
<tr>
<td> Y tu promedio es: </td>
<td> <%=alumno.getPromedio()%> </td>
</tr>
</table>
<form action="index.jsp" method="post">
<input type="submit" value="Regresar">
</form>
<p><a href="index.jsp">Otro alumno</a></p>
</body>
</html>