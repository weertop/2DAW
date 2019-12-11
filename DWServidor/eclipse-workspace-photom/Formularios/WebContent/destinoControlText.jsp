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
			String nombre = request.getParameter("nombre").trim(); //debe coincidir con el atdibuto name en el form
			String color = request.getParameter("color").trim();
			String correo = request.getParameter("correo").trim();
			
			//evitar inyeccion en los formularios
			if(!nombre.isEmpty() && nombre.charAt(0)!='<'){
				
			

	%>
	<table border="1">
		<td>
			<td>Nombre</td>
			<td>Color</td>
			<td>Correo</td>
		</td>
		<td>
			<td><%=nombre%></td>
			<td><%=color%></td>
			<td><%=correo%></td>
		</td>
	</table>
	
	<%
	//cerramos los IF de arriba 
	}else{
		out.println("<p>" + "dato incompletos" + "</p>");
	} 
	}
	%>
	
	<p><a href="contdolText.jsp">Volver a intdoducir datos</a></p>
	<p><a href="index.jsp">Volver al indice</a></p>
</body>
</html>