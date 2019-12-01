<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.time.*,modelo.Archivos"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Elige Tema</title>
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
  background: -webkit-linear-gradient(to right, #200122, #6f0000); /* Chrome 10-25, Safari 5.1-6 */
  background: linear-gradient(to right, #200122, #6f0000); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

}

.submit {
	border-radius: 5px;
}

.reset {
	border-radius: 5px;
}

h1 {
	color: white; 
	text-shadow:2px 2px black;
}
h3 {
	color: white; 
	text-shadow:5px 5px black;
}
.submit:hover {
  background-image: url("data:image/svg+xml;charset=utf8,%3Csvg id='squiggle-link' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:ev='http://www.w3.org/2001/xml-events' viewBox='0 0 20 4'%3E%3Cstyle type='text/css'%3E.squiggle{animation:shift .3s linear infinite;}@keyframes shift {from {transform:translateX(0);}to {transform:translateX(-20px);}}%3C/style%3E%3Cpath fill='none' stroke='%23453886' stroke-width='2' class='squiggle' d='M0,3.5 c 5,0,5,-3,10,-3 s 5,3,10,3 c 5,0,5,-3,10,-3 s 5,3,10,3'/%3E%3C/svg%3E");
  background-position: bottom;
  background-repeat: repeat-x;
  background-size: 20%;
  border-bottom: 0;
  padding-bottom: .3em;
  text-decoration: none;
}
.reset:hover {
  background-image: url("data:image/svg+xml;charset=utf8,%3Csvg id='squiggle-link' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:ev='http://www.w3.org/2001/xml-events' viewBox='0 0 20 4'%3E%3Cstyle type='text/css'%3E.squiggle{animation:shift .3s linear infinite;}@keyframes shift {from {transform:translateX(0);}to {transform:translateX(-20px);}}%3C/style%3E%3Cpath fill='none' stroke='%23453886' stroke-width='2' class='squiggle' d='M0,3.5 c 5,0,5,-3,10,-3 s 5,3,10,3 c 5,0,5,-3,10,-3 s 5,3,10,3'/%3E%3C/svg%3E");
  background-position: bottom;
  background-repeat: repeat-x;
  background-size: 20%;
  border-bottom: 0;
  padding-bottom: .3em;
  text-decoration: none;
}
</style>
<body>
	<%!
		LocalTime t = LocalTime.now();
		
	%>
	<form action="trataEligeTema" method="post">
		<div align="center">
		<h3><%=t %></h3>
			<table border="5" width="25%">
				<tr>
					<td>
						<div align="center">

							<h1 style="color: white">
								<b><u>Elige tema</u></b>
							</h1>
							<table border="4">
								<tr>
									<td align="center" style="color: white">Nombre:</td>
									<td align="center" style="color: white"><input type="text" name="nombre" class="num" size="35" required></td>
								</tr>
								<tr>
									<td align="center" style="color: white">Apellidos:</td>
									<td align="center" style="color: white"><input type="text" name="apellidos" class="num" size="35" required></td>
								</tr>
								<tr>
									<td align="center" style="color: white">Elige tema:</td>
									<td align="center"><select name="tema">
										<option value="Deportes">Deportes</option>
										<option value="Politica">Politica</option>
										<option value="Arte">Arte</option>
									</select></td>
								</tr>
								<tr>
									<td align="center" style="color: white">Comentarios:</td>
									<td align="center" style="color: white"><textarea rows="5" cols="35" name="comentario"></textarea></td>
								</tr>
							</table>
							<p>
								<input type="submit" name="enviar" class="submit"
									value="ENVIAR" size="35">
							</p>
							<p>
								<input type="reset" name="borrar" class="reset" value="BORRAR">
							</p>

						</div>
					</td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>