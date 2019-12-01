<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.time.*,modelo.Opinion"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tema Elegido</title>
</head>
<link rel="stylesheet" type="text/css" href="CSS.css">
<style type="text/css">
body {
	overflow-x: hidden;
	font-family: "Impact", sans-serif;
	font-weight: 300;
	background: #114357; /* fallback for old browsers */
	background: -webkit-linear-gradient(to right, #114357, #f29492);
	/* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to right, #114357, #f29492);
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}

table {
	background: #200122; /* fallback for old browsers */
	background: -webkit-linear-gradient(to right, #200122, #6f0000);
	/* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to right, #200122, #6f0000);
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}

a {
	color: white;
	text-shadow: 2px 2px black;
}

.submit {
	border-radius: 5px;
}

.reset {
	border-radius: 5px;
}

h1 {
	color: white;
	text-shadow: 2px 2px black;
}

h3 {
	color: white;
	text-shadow: 5px 5px black;
}

.submit:hover {
	background-image:
		url("data:image/svg+xml;charset=utf8,%3Csvg id='squiggle-link' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:ev='http://www.w3.org/2001/xml-events' viewBox='0 0 20 4'%3E%3Cstyle type='text/css'%3E.squiggle{animation:shift .3s linear infinite;}@keyframes shift {from {transform:translateX(0);}to {transform:translateX(-20px);}}%3C/style%3E%3Cpath fill='none' stroke='%23453886' stroke-width='2' class='squiggle' d='M0,3.5 c 5,0,5,-3,10,-3 s 5,3,10,3 c 5,0,5,-3,10,-3 s 5,3,10,3'/%3E%3C/svg%3E");
	background-position: bottom;
	background-repeat: repeat-x;
	background-size: 20%;
	border-bottom: 0;
	padding-bottom: .3em;
	text-decoration: none;
}

.reset:hover {
	background-image:
		url("data:image/svg+xml;charset=utf8,%3Csvg id='squiggle-link' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:ev='http://www.w3.org/2001/xml-events' viewBox='0 0 20 4'%3E%3Cstyle type='text/css'%3E.squiggle{animation:shift .3s linear infinite;}@keyframes shift {from {transform:translateX(0);}to {transform:translateX(-20px);}}%3C/style%3E%3Cpath fill='none' stroke='%23453886' stroke-width='2' class='squiggle' d='M0,3.5 c 5,0,5,-3,10,-3 s 5,3,10,3 c 5,0,5,-3,10,-3 s 5,3,10,3'/%3E%3C/svg%3E");
	background-position: bottom;
	background-repeat: repeat-x;
	background-size: 20%;
	border-bottom: 0;
	padding-bottom: .3em;
	text-decoration: none;
}
</style>
<body>
	<%
		LocalDate t = LocalDate.now();
		Opinion o = (Opinion) request.getAttribute("atribOpinion");
	%>
	<div align="center">
		<table border="5" width="25%">
			<tr>
				<td>
					<div align="center">

						<h1 style="color: white">
							<b><u>Resumen</u></b>
						</h1>

						<table border="4">
							<tr>
								<td align="center" style="color: white" colspan="2"><%=t%></td>

							</tr>
							<tr>
								<td align="center" style="color: white"><img alt="foto"
									src="<%=o.getFoto()%>" width="auto" height="100" /></td>
								<td align="center" style="color: white"><%=o.getComentario()%></td>
							</tr>
							<tr>
								<td align="center" style="color: white"><%=o.getApellidos()%></td>
								<td align="center" style="color: white"><%=o.getNombre()%></td>
							</tr>

						</table>
						<p>
							<a href="indexEligeTema.jsp">VOLVER</a>
						</p>


					</div>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>