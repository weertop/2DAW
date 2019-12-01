<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="modelo.Piramide,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Piramide p = (Piramide)request.getAttribute("atribPiramide");
int base = p.getBase();
%>
	<div align="center">
	<h1>Piramide</h1>
		<%for(int i=1;i<(base+1);i++){%>
		<div align="center">
			<%for(int j=0;j<i;j++){%>
				<img src="imagenes/<%=p.getNomImg()%>" alt="no esta la img" width="75"/>
			<%}%>
			</div>
		<%}%>
	</div>
</body>
</html>