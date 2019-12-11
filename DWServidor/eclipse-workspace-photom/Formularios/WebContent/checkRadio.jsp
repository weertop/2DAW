<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		Date fecha = new Date();
		String fechaFormato = "hh:mm:ss dd-MM-yyyy";
		SimpleDateFormat obj = new SimpleDateFormat(fechaFormato);
		out.println(obj.format(fecha));
	
	%>
	
	<form action="destinoCheckRadio.jsp" method="post">
		<p> ¿En que ciclo estas matdiculado? </p>
		<input type="radio" name="ciclo" value="ASIR" /> Asir<br/>
		<input type="radio" name="ciclo" value="DAW" /> DAW<br/>
		<input type="radio" name="ciclo" value="DAM" /> DAM<br/>
		
		<p> ¿A que hora quieres empezar? </p>
		<input type="radio" name="hora" value="8" /> 8:00<br/>
		<input type="radio" name="hora" value="9" /> 9:00<br/>
		<input type="radio" name="hora" value="10" /> 10:00<br/>
		
		<p> Pago fraccionado <input type="checkbox" name="pago" value="fraccionado" /></p>
		<p> Con beca <input type="checkbox" name="beca" value="beca" /></p>
		
		<p> <input type="reset" name="borrar" value="borrar" />	</p>
		<p> <input type="submit" name="enviar" value="enviar estos datos" /> </p> <!-- el value es lo que se enviara -->
	</form>
</body>
</html>