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
	String forma[] = {"rectangulo","circulo","cuadrado"};
	int posicionX = 0;
	Random rd = new Random();
	int aleBuscado;
%>

<form action="destinoSeleccionaForma.jsp" method="post">
		<%
		for(int i=0; i<forma.length ; i++, posicionX+=20){
			int ale = rd.nextInt(forma.length);
			
			switch(ale){
				case 0: %>			
						<button type="submit" name="usuEscoge" value="<%=forma[0]%>">
						<svg xmlns="http://www.w3.org/2000/svg"  height="250px" width="250px">
						<rect x="70" y="30" width="100px" height="200px" stroke="black" stroke-width=2 fill="red"/>
						</svg>
						</button>
						<%
						break;
						
				case 1: %>			
						<button type="submit" name="usuEscoge" value="<%=forma[1]%>">
						<svg xmlns="http://www.w3.org/2000/svg"  height="250px" width="250px">
						<circle cx="130" cy="130" r="90" stroke="black" stroke-width=”1px” fill="orange">
						</svg>
						</button>
						<%
						break;
						
				case 2: %>			
						<button type="submit" name="usuEscoge" value="<%=forma[2]%>">
						<svg xmlns="http://www.w3.org/2000/svg"  height="250px" width="250px">
						<rect x="30" y="30" width="200px" height="200px" stroke="black" stroke-width=2 fill="blue"/>
						</svg>
						</button>
						<%
						break;
			}

		}
		
		aleBuscado = rd.nextInt(forma.length);				//para seleccionar un color de los que se muestran
		%>
		<h2>Selecciona el de color: <%=forma[aleBuscado]%></h2>
			<input type="hidden" name="debiaBuscar" value="<%=forma[aleBuscado]%>"/>
		</form>
</form>
</body>
</html>