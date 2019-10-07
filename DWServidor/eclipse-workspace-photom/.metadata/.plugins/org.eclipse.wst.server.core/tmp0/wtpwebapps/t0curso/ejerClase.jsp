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
	<%! String saludos[] = {"hola", "buenas", "bienvenido"};  %>
	
	<!--  %! int aleatorio = ((int)(Math.random()*3-1)+1); %> -->
	<% 
		Random rd=new Random();
		int n=rd.nextInt(3);
		
		String cad = "h";
		out.println(n);
		if(n%2 == 0){
			cad += "3";
		}else{
			cad += "6";
		}
		out.println("<" + cad + "> El numero aleatorio es: " + n + " ->" + saludos[n] + "</" + cad + ">" );
	%>
	<h1>
	<%= saludos[n] %>
	</h1>
	
	<h2><a href="index.html">Volver al menu</a></h2>
</body>
</html>