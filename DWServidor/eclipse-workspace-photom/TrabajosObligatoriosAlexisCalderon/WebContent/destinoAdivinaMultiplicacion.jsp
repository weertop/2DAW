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
		String opA = request.getParameter("usuA");
		int opB = Integer.parseInt(request.getParameter("usuB"));
		int alA = Integer.parseInt(request.getParameter("alA"));
		int alB = Integer.parseInt(request.getParameter("alB"));
		
		String signo="";
		int resul = alA * alB;
		if(resul >0){
			signo="+";
		}else{
			signo="-";
		}
		
		if(opA.equals(signo)){
			out.println("<h3>Signo Correcto</h3>");
			if(opB == Math.abs(resul)){
				out.println("<h3>Resulatado Correcto</h3>");
			}else{
				out.println("<h3>Fallaste en el resultado era: " + resul + "</h3>");
			}
		}else{
			out.println("<h3>Fallaste en el Signo era: " + signo + "</h3>");
		}
	%>
	<hr/>
	<p><a href="adivinaMultiplicacion.jsp">Volver a jugar</a></p>
	<p><a href="indice.html">Volver al indice</a></p>
</body>
</html>