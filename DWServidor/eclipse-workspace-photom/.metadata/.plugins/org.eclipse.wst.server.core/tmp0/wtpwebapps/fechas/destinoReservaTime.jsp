<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.SimpleDateFormat, java.time.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int tarifaDia = 70;
	String entrada = request.getParameter("entrada");
	String salida = request.getParameter("salida");
	String horaEntrada = request.getParameter("horaEntrada");
	String horaSalida = request.getParameter("horaSalida");
	LocalDate fechaEntrada = LocalDate.parse(entrada);
	LocalDate fechaSalida = LocalDate.parse(salida);
	LocalTime horaEntradaT = LocalTime.parse(horaEntrada);
	LocalTime horaSalidaT = LocalTime.parse(horaSalida);
	
	int difDate = Period.between(fechaEntrada, fechaSalida).getDays();
	int total = tarifaDia * difDate;
	
	long difTime = ((Duration.between(horaEntradaT, horaSalidaT).getSeconds())/3600);
%>
<p>Tu estancia desde <%=entrada%> hasta <%=salida%> son <%=difDate%> dias : total <%=total%> y el tiempo es : <%=difTime%></p>
<p><a href="reserva.jsp">Volver</a></p>
</body>
</html>