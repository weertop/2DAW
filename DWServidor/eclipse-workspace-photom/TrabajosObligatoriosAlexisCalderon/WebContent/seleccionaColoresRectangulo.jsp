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
	String color[] = {"black","red","green","pink","purple","yellow"};
	int coloresDelBucle[] = new int[color.length];
	int posicionX = 0;
	Random rd = new Random();
	int aleBuscado = 0;
%>

<form action="destinoSeleccionaColorRectangulo.jsp" method="post">
		<%
		for(int i=0; i<color.length ; i++, posicionX+=10){
			int ale = rd.nextInt(color.length);
			coloresDelBucle[i] = ale;
	%>
			<button type="submit" name="usuEscoge" value="<%=color[ale]%>">
			<svg xmlns="http://www.w3.org/2000/svg"  height="250px" width="250px">
			<rect x="50" y="30" width="150px" height="200px" stroke="black" stroke-width=2 fill="<%=color[ale]%>"/>
			</svg>
			</button>
			
		<%
		}
		
		aleBuscado = rd.nextInt(coloresDelBucle.length);				//para seleccionar un color de los que se muestran
		%>
		<h2>Selecciona el de color: <%=color[aleBuscado]%></h2>
			<input type="hidden" name="debiaBuscar" value="<%=color[aleBuscado]%>"/>
		</form>
</form>
</body>
</html>