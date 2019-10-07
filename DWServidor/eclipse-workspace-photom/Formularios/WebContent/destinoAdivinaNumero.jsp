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
		String enviar = request.getParameter("enviar");
		if(enviar!=null){
			int numero = Integer.parseInt(request.getParameter("numero"));
			int num = Integer.parseInt(request.getParameter("num"));
			if(num==numero){
				out.println("Correto!!!!!");
			}else{
				out.println("Error el numero era: " + numero + " :c");
			}
		}
	%>
	
	<p><a href="adivinaNumero.jsp">Volver a introducir datos</a></p>
	<p><a href="index.jsp">Volver al indice</a></p>
</body>
</html>