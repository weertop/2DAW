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
		String[] tamanio = {"50px","100px","200px"};
		String[] tamPalabras = {"pequeño","mediano","grande"};
		int posicionX = 10;
		Random rd = new Random();
		int tamAleatorioPalabra = rd.nextInt(tamanio.length);
		String tamElegidoPalabra = tamPalabras[tamAleatorioPalabra];
		
		%>
		<form action="destinoTamanioDisc.jsp" method="post">
		<%
		for(int i=0; i<3 ; i++, posicionX+=10){
			int tamAleatorio = rd.nextInt(3);
			String tamElegido = tamanio[tamAleatorio];
	%>
			
				<button type="submit" name="usuEscoge" value="<%=tamElegido%>">
				<svg xmlns="http://www.w3.org/2000/svg"  height="250px" width="250px">
				<rect x="<%=posicionX%>" y="50" width="<%=tamElegido%>" height="<%=tamElegido%>" stroke="green" stroke-width=2 fill="red"/>
				</svg>
				</button>
			
		<%
		} 
		%>
		<h2>Selecciona el de tamaño: <%=tamElegidoPalabra%></h2>
			<input type="hidden" name="debiaBuscar" value="<%=tamElegidoPalabra%>"/>
		</form>
	
</body>
</html>