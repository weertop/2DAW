<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulario Tutoria</title>
<link rel="stylesheet" type="text/css" href="css/estilo2.css">
</head>
<body>
<!-- tiene lista simpe nombre profe, lista simple dia, hora radio button, textarear observaciones enviar y mostdar datos en otdo -->
<%
	String nombres[] = {"Teo","Mercedes","Maite","Teresa","Pedro"};
	String dia[] = {"Lunes","Martes","Miercoles","Jueves","Viernes"};
	String hora[] = {"9:00","10:00","11:00","12:00"};
%>
<form action="destinoFormulario.jsp" method="post">
	<table border="1">
		<tr>
			<th>Nombre Docente:</th>
			<th>Dia:</th>
			<th>Hora:</th>
			<th>Observaciones:</th>
		</tr>
		<tr>
			<td>
				<select name="nombreS">
					<%for(int i=0;i<nombres.length;i++){ %>
					<option value="<%=i%>"><%=nombres[i]%></option>
					<%} %>
				</select>
			</td>
			<td>
				<select name="diaS">
					<%for(int j=0;j<dia.length;j++){ %>
					<option value="<%=j%>"><%=dia[j]%></option>
					<%} %>
				</select>
			</td>
			<td>
				<%for(int k=0;k<hora.length;k++){ %>
				<p><input type="radio" name="hora" value="<%=k%>" checked/><%=hora[k]%></p>
				<%} %>
			</td>
			<td>
				<textarea rows="5" cols="12" name="obs"></textarea>
			</td>
		</tr>
	</table>
	<div>
	<input type="submit" name="enviar" value="Confirmar" />
	<input type="reset" name="borrar" value="Borrar"/>
	</div>
</form>
</body>
</html>