<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Calendar c1 = Calendar.getInstance();
	String entrada = request.getParameter("entrada");
	String fe[] = entrada.split("-");
	String horaE = request.getParameter("horaE");
	String horaEs[] = horaE.split(":");
	out.println("<p>" + entrada + "</p>");
	out.println("<p>" + horaE + "</p>");
	Date f1 = new Date(Integer.parseInt(fe[0]),Integer.parseInt(fe[1]),Integer.parseInt(fe[2]),Integer.parseInt(horaEs[0]),Integer.parseInt(horaEs[0]));
	String formato = "HH:mm:ss dd-MM-yyyy";
	SimpleDateFormat obj = new SimpleDateFormat(formato);
	//obj.format(f1);
%>
<p>Entre la primera fecha <%=obj.format(f1)%> y la segunda</p>
<p>año<%=fe[0]%> mes<%=fe[1]%> dia<%=fe[2]%> hora<%=horaEs[0]%> minutos<%=horaEs[1]%></p>
<p><a href="reserva.jsp">Volver</a></p>
</body>
</html>