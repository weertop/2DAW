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
	<%
		String enviar = request.getParameter("enviar");
		out.println(enviar);
		int saldo = Integer.parseInt(request.getParameter("saldo"));	//sacamos la variable para que sea visible 
		out.println(saldo);
		if(enviar!=null){
			 
			int apuesta = Integer.parseInt(request.getParameter("apuesta"));
			if(apuesta <= saldo){
				int numero = Integer.parseInt(request.getParameter("numero"));
				int num = Integer.parseInt(request.getParameter("num"));
				if(num==numero){
					out.println("Correto!!!!! <br/>");
					saldo+=(apuesta * 2);
				}else{
					out.println("Error el numero era: " + numero + " :c <br/>");
					saldo -= apuesta;
				}
			}else{
				out.println("No tienes dinero suficiente!!! <br/>");
			}
		}
	%>
	<p>me queda <%=saldo%></p>
	<form action="adivinaConSaldo.jsp" method="post">

		<p><input type="hidden" name="saldo" value="<%=saldo%>"/></p>
		
		<p> <input type="submit" name="enviar" value="enviar estos datos" /> </p> <!-- el value es lo que se enviara -->
	</form>
	
	<p><a href="adivinaConSaldo.jsp">Volver a apostar</a></p>
	<p><a href="index.jsp">Volver al indice</a></p>
</body>
</html>