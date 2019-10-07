<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		Random rd = new Random();
		int n = rd.nextInt(50);
		int o = rd.nextInt(50);
		
		int ini=o, fin=n;
		
		if(n<o){
			ini=n;
			fin=o;
		}
	%>
	
	<ul>
		<%
			for(int i=ini;i<fin+1;i++){
				out.println("<li>" + i + "</li>");
			}
		%>
	</ul>
	
	<h2><a href="index.html">Volver al menu</a></h2>
</body>
</html>