<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.Persona,dao.Departamento2" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Persona p = new Persona("2342343","Maria");
	Departamento2 d1 = new Departamento2("Marketing","2342343");
	%>
	
	<p> El departamento <%= d1.getNombreDepar() %> es dirigido por : 
		<%
			if(d1.getDni_jefe() != null){
				if(d1.getDni_jefe().equals(p.getDni())){
					out.println("Es dirigido por: " + p.getNombre());
				}else{
					out.println("Esta dirigido por un desconocido");
				}
			}
		%>
	</p>
	
	<h2><a href="index.html">Volver al menu</a></h2>
</body>
</html>