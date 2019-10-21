<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adivina la letra</title>
</head>
<body>
<% 
	String palabras[] = {"pepe","juan","luis"};
	Random rd = new Random();
	int ind = rd.nextInt(palabras.length);
	String elegida = palabras[ind];
	int letra = rd.nextInt(elegida.length());
	String elegidaSin = elegida.substring(0,letra) + '_' + elegida.substring(letra+1,elegida.length());
	char letraElegida = elegida.charAt(letra);
	//out.println(elegidaSin);
	String enviar = request.getParameter("enviar");
	if(enviar!=null){
		String elegida2 = request.getParameter("introducido");
		String elegidaLe = request.getParameter("elegidaLetra");
		//out.println(": " + elegida2 + " " + elegida.charAt(letra));
		if(elegida2.equalsIgnoreCase(elegidaLe)){
			%>
			<h2>Correcto</h2>
			<%
		}else{
			%>
			<h2>False</h2>
			<%
		}
	}
%>

<h1><%=elegidaSin%></h1>

<form action="adivinaLetra.jsp" method="post">
	<input type="text" name="introducido" maxlength="1"/>
	<input type="hidden" name="elegidaLetra" value="<%=letraElegida%>"/>
	<input type="submit" name="enviar" value="mostrar" />
</form>

</body>
</html>