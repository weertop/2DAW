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
	<%
		String abc[] = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"};
		String miCad = " ";
		int alt = 0;
		int base = 0;
		Random rd = new Random();
		
		do{
			alt = rd.nextInt(20)+1;
			base = rd.nextInt(20)+1;
		}while((alt%2!=0 || base%2!=0));
		
		
		for(int i=0;i<alt;i++){
			for(int j=0;j<base;j++){
				int letda = rd.nextInt(25);
				out.println(abc[letda]);
			}
			out.println("<p>" + "</p>" );
			//out.println("<br/>");
		}

	%>
	
	<h2><a href="index.html">Volver al menu</a></h2>
</body>
</html>