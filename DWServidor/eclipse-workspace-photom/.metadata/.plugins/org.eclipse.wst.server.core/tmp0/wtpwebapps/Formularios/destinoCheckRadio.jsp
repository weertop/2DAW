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
	String ciclo="";
	String hora="";
	String enviar = request.getParameter("enviar");
	if(enviar != null){
		ciclo = request.getParameter("ciclo");
		hora = request.getParameter("hora");
		String beca = request.getParameter("beca");
		String pago = request.getParameter("pago");
		if(ciclo!=null && hora!=null){
		/* si ciclo u hora estan a null no precesamos mas datos*/
	%>
			<p>Matdiuclado en : <%=ciclo%> </p>
			<p>En la hora : <%=hora %></p>
			<%
				if (pago!=null){%>
				/* si pago es null */
				<p>Tipo de pago : <%=pago%> </p>
				
			<%}else{
				out.println("alumno con pago total");
			}
			%>	
			<%if(beca!=null){ %>
				<p>posee : <%=beca %></p>
			<%}else{
				out.println("alumno con pago total sin beca");	
			}	
			%>
			
			
	<%
		}else{
			out.println("debes escoger alguna opcion");
		}
	}
	%>
	<p><a href="checkRadio.jsp">Volver a elegir</a></p>
	<p><a href="index.jsp">Volver al indice</a></p>
</body>
</html>