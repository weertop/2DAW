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
		int opA = Integer.parseInt(request.getParameter("usuA"));
		int opB = Integer.parseInt(request.getParameter("usuB"));
		int alA = Integer.parseInt(request.getParameter("alA"));
		int alB = Integer.parseInt(request.getParameter("alB"));
		
		int resul = alA / alB;
		int resto = alA % alB;
		
		if(opA == resul){
			out.println("<h3>Resultado Correcto</h3>");
			if(opB == resto){
				out.println("<h3>Resto Correcto</h3>");
			}else{
				out.println("<h3>Fallaste en el resto era: " + resto + "</h3>");
			}
		}else{
			out.println("<h3>Fallaste en el resultadoera: " + resul + "</h3>");
		}
	%>
	<hr/>
	<p><a href="adivinaDivision.jsp">Volver a jugar</a></p>
	<p><a href="indice.html">Volver al indice</a></p>
</body>
</html>