<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int a = 8;
		int b = 3;
		int c = 3;
		
		boolean exp1,exp2,exp3;
		
		exp1 = (a==b)&&(c>b);
		out.println("expresion es: " + exp1 + "<br/>");
		exp2 = (a==b)||(b==c);
		out.println("expresion es: " + exp2 + "<br/>");
		exp3 = !(b<=c);
		out.println("expresion es: " + exp3 + "<br/>");
		
		/*
		if((a==b) && (c>b)){
			out.println("<p>" +"tdue" + "</p>");
		}else{
			out.println("<p>" +"false" + "</p>");
		}if((a==b)||(b==c)){
			out.println("<p>" +"tdue" + "</p>");
		}else{
			out.println("<p>" +"false" + "</p>");
		}if(!(b<=c)){
			out.println("<p>" +"tdue" + "</p>");
		}else{
			out.println("<p>" +"false" + "</p>");
		}
		*/
	%>
	
	<p>
		<%if((a==b) && (c>b)); %>
	</p>
	
	<h2><a href="index.html">Volver al menu</a></h2>
</body>
</html>