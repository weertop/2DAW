<%@page import="java.time.temporal.ChronoUnit"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.time.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	LocalTime tiempo0 = LocalTime.now();
	LocalTime tiempo1 = LocalTime.of(15,37,15);
	//LocalTime tiempo2 = LocalTime.of(2019,5,15);
	LocalTime tiempo3 = LocalTime.parse("10:45");
	LocalTime tiempo4 = tiempo3.plus(15,ChronoUnit.MINUTES);						//sumanos 15 minutos a la tiempo 3
	//LocalTime tiempo4 = tiempo3.plusMinutes(15);
	long dif = Duration.between(tiempo3, tiempo4).toMinutes();
	/*LocalTime tiempo5 = tiempo2.minusYears(1);
	boolean sw = tiempo5.isBefore(tiempo3);
	boolean sw2 = LocalTime.of(2020,Month.APRIL,1).isAfter(LocalTime.parse("2020-12-03"));
	int dif = Period.between(tiempo5, tiempo3).getDays();						//dif LOCALTIME seria long porque devuelve timepo entre 2 timepos en microsegundos
	*/%>
	<p>Hora <%=tiempo0%></p>
	<p>Hora <%=tiempo1.toString()%></p>
	<p>Hora <%=tiempo3%></p>
	<p>Hora <%=tiempo4.toString()%></p>
	<p>Direfencia <%=dif%></p>
	
</body>
</html>