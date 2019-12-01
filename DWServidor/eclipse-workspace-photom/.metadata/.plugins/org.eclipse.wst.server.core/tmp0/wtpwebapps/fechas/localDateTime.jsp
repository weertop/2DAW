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
	LocalDateTime lt1 = LocalDateTime.now();			//OJO sin el new porque son abstractas 
	out.println("Fecha actual: "+ lt1 + "<br/>");
	
	LocalDateTime lt2 = LocalDateTime.of(2019,Month.AUGUST,20,8,30,15);
	out.println("Fecha puesta a mano: "+ lt2 + "<br/>");							//2019-08-20T08:30 
	
	LocalDateTime lt3 = lt2.plusDays(5);
	out.println("Fecha sumado mas 5 dias: "+ lt3 + "<br/>");
	
	LocalDateTime lt4 = lt3.minusMinutes(10);
	out.println("Fecha restamos mas 10 mins: "+ lt4 + "<br/>");
	
	LocalDateTime lt5 = lt4.plusYears(1);
	out.println("Fecha sumamos mas 1 año: "+ lt5 + "<br/>");
	
	long dif = Duration.between(lt3, lt5).toDays();
	out.println("Diferencia entre la tercera y la quinta: "+ dif + "<br/>");
%>
</body>
</html>