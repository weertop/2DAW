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
	String forma[] = {"cuadrado","circulo","elipse"};
	String color[] = {"red","blue","purple","yellow","pink","black"};
	int posicionX = 0;
	Random rd = new Random();
	int aleBuscadoColor, aleBuscadoForma;
%>

<form action="destinoSeleccionaFormaColor.jsp" method="post">
		<%
		for(int i=0; i<15 ; i++){
			int aleForma = rd.nextInt(forma.length);
			int aleColor = rd.nextInt(color.length);
			
			switch(aleForma){
				case 0: %>			
						<button type="submit" name="usuEscoge" value="<%=forma[0]+ ':' + color[aleColor]%>">
						<svg xmlns="http://www.w3.org/2000/svg"  height="250px" width="250px">
						<rect x="30px" y="30px" width="200px" height="200px" stroke="black" stroke-width=2 fill="<%=color[aleColor]%>"/>
						</svg>
						</button>
						<%
						break;
						
				case 1: %>			
						<button type="submit" name="usuEscoge" value="<%=forma[1]+ ':' + color[aleColor]%>">
						<svg xmlns="http://www.w3.org/2000/svg"  height="250px" width="250px">
						<circle cx="130px" cy="130px" r="90" stroke="black" stroke-width=”1px” fill="<%=color[aleColor]%>">
						</svg>
						</button>
						<%
						break;
						
				case 2: %>			
						<button type="submit" name="usuEscoge" value="<%=forma[2]+ ':' + color[aleColor]%>">
						<svg xmlns="http://www.w3.org/2000/svg"  height="250px" width="250px">
						<ellipse cx="130px" cy="130px" rx="90" ry="50" stroke-width=”1px” fill="<%=color[aleColor]%>"/>
						</svg>
						</button>
						<%
						break;
			}

		}
		
		aleBuscadoColor = rd.nextInt(color.length);				//para seleccionar un color de los que se muestran
		aleBuscadoForma = rd.nextInt(forma.length);
		%>
		<h2>Selecciona el de la forma: <%=forma[aleBuscadoForma]%> y con color: <%=color[aleBuscadoColor]%></h2>
			<input type="hidden" name="debiaBuscarForma" value="<%=forma[aleBuscadoForma]%>"/>
			<input type="hidden" name="debiaBuscarColor" value="<%=color[aleBuscadoColor]%>"/>
		</form>
</form>
</body>
</html>