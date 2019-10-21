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
	Random rd = new Random();
	int numAle,saldo,numero,apuesta;
	String enviar=request.getParameter("enviar");
	if(enviar != null){					//ya se ejecuto antes una primera vez
		apuesta = Integer.parseInt(request.getParameter("apuesta"));
		saldo = Integer.parseInt(request.getParameter("saldo"));
		numAle = Integer.parseInt(request.getParameter("numAle"));
		numero = Integer.parseInt(request.getParameter("numero"));
		if(numAle == numero){
			out.println("<p> acertaste!!! </p>");
			saldo+=apuesta;
		}else{
			out.println("<p> perdiste!!! </p>");
			saldo-=apuesta;
		}
	}else{								//todavia no has jugado ninguna vez
		numAle = rd.nextInt(10)+1;		//numero aleatorio para adivinar
		saldo = rd.nextInt(100)+1;		//saldo inicial
	}
	
	if(saldo>0){
		
%>
	<form action="adivina.jsp" method="post">
		<p>Tu saldo es: <input type="text" name="saldo" value="<%=saldo%>" readonly></p>
		<p>Ingresa numero para adivinar (entde 1 - 10): <input type="number" name="numero" min="1" max="10" required/></p>
		<p>Cuanto apuestas: <input type="number" name="apuesta" min="1" max=<%=saldo%> required/></p>
		<p><input type="hidden" name="numAle" value="<%=numAle%>"/></p>
		<input type="submit" name="enviar" value="juega"/>
	</form>
<%	}else{ //else de no tienes saldo para seguir jugando%>

<h3>Perdiste todo!</h3>

<%} %>

<p><a href="adivina.jsp">Volver a empezar</a></p>
</body>
</html>