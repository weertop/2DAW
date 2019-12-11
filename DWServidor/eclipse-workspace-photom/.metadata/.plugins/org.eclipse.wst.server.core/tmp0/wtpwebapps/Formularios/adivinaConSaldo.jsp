<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- Obtenemos un numero aleatorio y se lo pasamos por post con el input hidden se pasara en el value -->

<body>
	<%
	Date fecha = new Date();
	out.println("<p>" + fecha + "</p>");
	
	Random rd = new Random();
	int numero = rd.nextInt(100)+1;
	
	String saldo = request.getParameter("saldo");			//ojo a esto como funciona????
	int miSaldo =0;
	if(saldo != null){
		miSaldo = Integer.parseInt(saldo);
	}else{
		miSaldo = rd.nextInt(100)+1;
	}
	out.println("<p> tu saldo actual es: " + miSaldo + "</p>");
	%>
	<form action="destinoAdivinaNumeroSaldo.jsp" method="post">
		<p> Adivina el numero pensado del 1 al 100: <input type="number" name="num" min="1" max="100" required/> </p>
		<p> Cuanto apuestas: <input type="number" name="apuesta" min="1" max="100" required/> </p>
		
		
		<p><input type="hidden" name="numero" value="<%=numero%>"/> </p>
		<p><input type="hidden" name="saldo" value="<%=miSaldo%>"/></p>
		
		<p> <input type="reset" name="borrar" value="borrar" />	</p>
		<p> <input type="submit" name="enviar" value="enviar estos datos" /> </p> <!-- el value es lo que se enviara -->
	</form>
	
	<p><a href="index.jsp">Volver al indice</a></p>
</body>
</html>