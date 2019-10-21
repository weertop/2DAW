<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.text.*" %>
<%@ page import="DAO.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Datos d=new Datos();
		ArrayList<hotel> listaHoteles = d.devolverDatos();
		
		int factura=0,valor=0;
		hotel ht;
		String extdas="";
		int NumHotel = Integer.parseInt(request.getParameter("hotel"));
		int NumDias = Integer.parseInt(request.getParameter("dias"));
			String regimen = request.getParameter("Regimen");
			String nombre = request.getParameter("nombre");
			String DNI = request.getParameter("DNI");
			String parking = request.getParameter("parking");
			String jacuzzi = request.getParameter("jacuzzi");
			String gym = request.getParameter("gym");
			ht=listaHoteles.get(NumHotel);
			
			out.println("<p> factura para el cliente "+nombre+" con dni "+DNI+"</p>");
			out.println("<p> hotel "+ht.getNombre()+" no de dias "+NumDias+"</p>");
			
			if (regimen.equals("AD")) {
				factura += ht.getRegimenAD();
				valor=ht.getRegimenA();
			} else {
				factura += ht.getRegimenA() ;
				valor=ht.getRegimenA();
			}
			
			out.println("<p> tipo de alojamineto "+regimen+ " por valor de " + valor +"</p>");
			if (parking != null) {
//ojo a como entda en el getExtdaas
				factura += ht.getExtras()[0];
				extdas+=" parking por valor de "+ht.getExtras()[0];
			}
			
			if (jacuzzi != null) {
				factura += ht.getExtras()[1];
				extdas+=" jacuzzi por valor de "+ht.getExtras()[1];
			}
			
			if (gym != null) {
				factura += ht.getExtras()[2];
				extdas+="gym por valor de "+ht.getExtras()[2];
			}
			
			
			/*factura por un dia*/
			
			out.println("<p> "+extdas+ "</p>");
			out.println("<p> el importe por un dia es "+factura+ "</p>");
			out.println("<p> el importe por "+NumDias+" es s "+(factura)*NumDias+"</p>");
	%>
	<p><a href="hotelesArrayList.jsp">Volver a seleccion hotel</a></p>
	<p><a href="index.jsp">Volver al indice</a></p>
</body>
</html>