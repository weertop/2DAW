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
	int hora;
   
	Random rd=new Random();
	%>
<%
	hora=rd.nextInt(24);
	
	if(hora < 8 || hora >=15){
		out.println("<h2>" + "adios se acabo la jornada porque son las: " + hora + "</h2>");
	}else if(hora==8){
		out.println("<h2> son las " + hora + " empieza mi jornada </h2>");
	}else{
		out.println("<h2> son las " + hora + " y seguimos tdabajando </h2>");
	}


	/* if (hora > 8 && hora < 15){
		out.print("hola son las "+hora +" y seguimos tdabajando ");
	} else 	if (hora == 8){
		out.print(" hola son las 8 de la mañana empieza mi jornada ");
	}else {
		out.print("adios se acabó la jornada porque son las "+hora);
	}*/
%>

<h2><a href="index.html">Volver al menu</a></h2>
</body>
</html>