<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Carrusel de banderas</title>
<link href="css/estilo1.css" type="text/css" rel="stylesheet"/>
</head>
<body>

<!-- carrusel de imagenes con 2 botones a los lados para recorrer las imagenes, puede ser lista circular -->
<%
	String[] rutas = {"images/1.jpg","images/2.png","images/3.jpg","images/4.png","images/5.png","images/6.jpg","images/7.jpg","images/8.gif"}; 
	Random rd = new Random();
	int actual = rd.nextInt(7);
	//obtener el value de los input y segun eso sumar o restar
	String actualText = request.getParameter("actual");
	if(actualText != null){
		if(request.getParameter("enviar").equals("back")){
			actual = Integer.parseInt(actualText);
			if(actual == 0){
				actual = rutas.length-1;
			}else{actual--;}	
		}if(request.getParameter("enviar").equals("next")){
			actual = Integer.parseInt(actualText);
			if(actual == rutas.length-1){
				actual = 0;
			}else{actual++;}
		}
	}

%>
<form action="CarruselFotos.jsp" method="post">
<fieldset><legend>Carrusel de banderas</legend>
<table>
	<tr>
		<input type="hidden" name="actual" value="<%=actual%>"/>
		<th><input type="submit" name="enviar" value="Back" /></th>
		<th colspan="3"><img src="<%=rutas[actual]%>" alt="imagenes de banederas" width="200" height="150"></th>
		<th><input type="submit" name="enviar" value="Next" /></th>
	</tr>
</fieldset>
</table>
</form>
</body>
</html>