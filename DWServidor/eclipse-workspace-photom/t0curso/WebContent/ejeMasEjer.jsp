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
	<%! 
		public String genera(int longitud){
		String abc[] = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"};
		String digitos[] = {"1","2","3","4","5","6","7","8","9","0"};  
		String miCad = " ";
		int letda = 0;
		int numero = 0;
		
		Random rd = new Random();
		
		for(int i=0; i<longitud; i++){
			letda = rd.nextInt(25);
			numero = rd.nextInt(9);
			miCad = miCad + abc[letda] + digitos[numero];
		}
		
		return miCad;
	}
	%>
	
	<p> Su password es: 
		<%
			String resul = genera(5);
			out.println(resul);
		%>
	
	
	</p>
	
	<h2><a href="index.html">Volver al menu</a></h2>
</body>
</html>