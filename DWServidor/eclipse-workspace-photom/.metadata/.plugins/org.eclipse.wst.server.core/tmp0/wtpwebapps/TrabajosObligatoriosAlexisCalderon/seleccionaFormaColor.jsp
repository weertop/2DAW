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
	String color[] = {"red","blue","purple","yellow","pink"};
	//lista para guardar el producto cartesiano entre forma y color
	ArrayList<String[]> lista = new ArrayList<String[]>();

	Random rd = new Random();
	
	int aleBuscadoColor, aleBuscadoForma, ale;
	aleBuscadoColor = rd.nextInt(color.length);				
	aleBuscadoForma = rd.nextInt(forma.length);
	
%>

<form action="destinoSeleccionaFormaColor.jsp" method="post">
		<%
		//esto hace el producto cartesiano entre las listas forma y color, lo guarda en lista
		for(String v1 : forma){
			for(String v2 : color){
				lista.add(new String[]{v1,v2});
			}
		}
		 
		//esto mezcla los elementos del producto cartesiano entre forma y color
		for (int i=0; i<lista.size(); i++) {
		    int randomPosicion = rd.nextInt(lista.size());
		    String temp1 = lista.get(i)[0];
		    String temp2 = lista.get(i)[1];
		    lista.get(i)[0] = lista.get(randomPosicion)[0];
		    lista.get(i)[1] = lista.get(randomPosicion)[1];
		    lista.get(randomPosicion)[0] = temp1;
		    lista.get(randomPosicion)[1] = temp2;
		}
		
		//esto muestra en pantalla la forma y color de la lista
		for(int i=0;i<lista.size();i++){
			String dato = lista.get(i)[0]+":"+lista.get(i)[1];
			String formas = lista.get(i)[0];
			if(formas.equals("cuadrado")){
			%>			
						<button type="submit" name="usuEscoge" value="<%=dato%>">
						<svg xmlns="http://www.w3.org/2000/svg"  height="250px" width="250px">
						<rect x="30px" y="30px" width="200px" height="200px" stroke="black" stroke-width=2 fill="<%=lista.get(i)[1]%>"/>
						</svg>
						</button>
						<%
						
		}else if(formas.equals("circulo")){ %>			
						<button type="submit" name="usuEscoge" value="<%=dato%>">
						<svg xmlns="http://www.w3.org/2000/svg"  height="250px" width="250px">
						<circle cx="130px" cy="130px" r="90" stroke="black" stroke-width=”1px” fill="<%=lista.get(i)[1]%>">
						</svg>
						</button>
						<%
		
						
		}else if(formas.equals("elipse")){ %>			
						<button type="submit" name="usuEscoge" value="<%=dato%>">
						<svg xmlns="http://www.w3.org/2000/svg"  height="250px" width="250px">
						<ellipse cx="130px" cy="130px" rx="90" ry="50" stroke-width=”1px” fill="<%=lista.get(i)[1]%>"/>
						</svg>
						</button>
						<%
			}
		}
		
		%>
		<h2>Selecciona el de la forma: <%=forma[aleBuscadoForma]%> y con color: <%=color[aleBuscadoColor]%></h2>
			<input type="hidden" name="debiaBuscarForma" value="<%=forma[aleBuscadoForma]%>"/>
			<input type="hidden" name="debiaBuscarColor" value="<%=color[aleBuscadoColor]%>"/>
		</form>
</form>
</body>
</html>