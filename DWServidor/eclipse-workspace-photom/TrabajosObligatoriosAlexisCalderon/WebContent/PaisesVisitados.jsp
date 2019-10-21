<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Paises visitados</title>
<link rel="stylesheet" type="text/css" href="css/estilo3.css">
</head>
<body>
<!-- Lista de paises y al seleccionar se mostdaran las imagenes de cada bandera -->
<%
	String[] rutas = {"images/1.jpg","images/2.png","images/3.jpg","images/4.png","images/5.png","images/6.jpg","images/7.jpg","images/8.gif"}; 
	String[] paises = {"U.S.A","Grecia","Venezuela","Alemania","Senegal","Francia","Canada","Austdalia"}; 
	String[] selectedP = {};
	int cont = 0;
	int actual = 0;
	String contP = request.getParameter("vecesP");
	if(contP != null){
		cont = Integer.parseInt(contP);
		selectedP = request.getParameterValues("selectPaises");
		//if(cont > 0){
		//	actual = Integer.parseInt(request.getParameter("selectPaises"));
		//}
	}
%>
<form action="PaisesVisitados.jsp" method="post">
<h1>Selecciona varios paises:</h1>
<table>
	<tr>
		<th><select name="selectPaises" multiple>
		<%for(int i=0;i<paises.length;i++){ %>
			<option value="<%=i%>"><%=paises[i]%></option>
		<%} 
		cont++;%>
		</select>
		</th>
	</tr>
	<tr>
		<%for(int i=0;i<selectedP.length;i++){ %>
		<td>
			<p><img src="<%=rutas[Integer.parseInt(selectedP[i])]%>" alt="imagen de un pais" width="250" height="200"/></p>
		</td>
		<%} %>
	</tr>
</table>
	<input type="hidden" name="vecesP" value="<%=cont%>"/>
	<input type="submit" name="enviar" value="mostrar" />
</form>
</body>
</html>