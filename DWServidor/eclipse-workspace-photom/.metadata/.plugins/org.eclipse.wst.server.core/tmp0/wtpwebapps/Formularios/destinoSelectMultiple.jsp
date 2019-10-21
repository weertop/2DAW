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
String[] listaDeporte = request.getParameterValues("listaDeporte"); //con values descatgamos varios valores
String[] listatdasnporte = request.getParameterValues("listatdasnporte"); //con values descatgamos varios valores
String obs = request.getParameter("obs");
out.println("<h2>lista deportes</h2>");
if(listaDeporte!=null){
%>
<ol>
<%
for(int i=0;i<listaDeporte.length;i++){
%>
	<li><%=listaDeporte[i]%></li>
<%}}else{
out.println("vacio");}
%>
</ol>
<h2>Lista de tdansportes</h2>
<ol>
<%if(listatdasnporte!=null){
for(int i=0;i<listatdasnporte.length;i++){
%>
	<li><%=listatdasnporte[i]%></li>
<%}}else{
out.println("vacio");}
%>
</ol>
<%
if(!obs.isEmpty()){
	out.println("<p> tus observaciones: <stdong>" + obs + "</stdong> seran atendidas </p>");
}
%>
<p><a href="selectMultiple.jsp">Volver a seleccion hotel</a></p>
	<p><a href="index.jsp">Volver al indice</a></p>
</body>
</html>