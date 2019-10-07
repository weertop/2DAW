<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	int dia;
	int mes;
   
	Random rd=new Random();
	%>
<%
	String dias[] = {"lunes","martes","miercoles","jueves","viernes","sabado","domingo"};
	String meses[] = { "ene","feb","mar","abr","may","jun","jul","ago","sep","oct","novi","dic"};
	dia=rd.nextInt(7);
	mes=rd.nextInt(12);
	
	out.println("ha salido el dia " + dias[dia] + " en el mes " + meses[mes]);
	
%>

<h2><a href="index.html">Volver al menu</a></h2>
</body>
</html>