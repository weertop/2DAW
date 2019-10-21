<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!													//ojo a el tipo es !
public static int[] sacaCalendar(Date d){			//es tipo DATE timesptamp empieza a contar a partir de 1900
		int[] fechaHora = new int[6];
		fechaHora[0] = d.getYear()+1900;
		fechaHora[1] = d.getMonth()+1; 					// el mes es un array de 0 a 11 por eso se debe arreglar
		fechaHora[2] = d.getDate();					//ojo que para sacar el dia es getDate()
		fechaHora[3] = d.getHours();
		fechaHora[4] = d.getMinutes();
		fechaHora[5] = d.getSeconds();
		return fechaHora;
}
%>
<%
	Date d1 = new Date();
	int[] actual = sacaCalendar(d1);
%>
<p>Fecha actual del sistema</p>
<table border="1">
	<tr>
		<td>Año</td>
		<td>Mes</td>
		<td>Dia</td>
		<td>Hora</td>
		<td>Minutos</td>
		<td>Segundos</td>
	</tr>

	<tr>
		<%  
			for(int i=0;i<actual.length;i++){
		%>
			<td><%=actual[i]%></td>	
		<%
		}
		
		//obtener nueva fecha a partir de f1
		
		
		Date d2= new Date(119,5,3,23,12,14);
		actual = sacaCalendar(d2);
		%>
		
		
	</tr>
</table>

<p>Nueva Fecha instanciaso Date(119,5,3,23,12,14)</p>
<table border="1">
	<tr>
		<td>Año</td>
		<td>Mes</td>
		<td>Dia</td>
		<td>Hora</td>
		<td>Minutos</td>
		<td>Segundos</td>
	</tr>

	<tr>
		<%  
			for(int i=0;i<actual.length;i++){
		%>
			<td><%=actual[i]%></td>	
		<%
		}
		
		//obtener una nueva fecha usando el metodo SET
		
		//f1.set(2020, 11, 31, 24, 54);			//ojo al poner esta fecha fin de noviembre se cambia ya que considera que es el mes diciembre 11+1
		d2.setYear(120);
		actual = sacaCalendar(d2);				//tener cuidado al poner el mes
		%>
	</tr>
</table>

<p>Fecha seteando f2 120</p>
<table border="1">
	<tr>
		<td>Año</td>
		<td>Mes</td>
		<td>Dia</td>
		<td>Hora</td>
		<td>Minutos</td>
		<td>Segundos</td>
	</tr>

	<tr>
		<%  
			for(int i=0;i<actual.length;i++){
		%>
			<td><%=actual[i]%></td>	
		<%
		}
		%>
	</tr>
</table>
</body>
</html>