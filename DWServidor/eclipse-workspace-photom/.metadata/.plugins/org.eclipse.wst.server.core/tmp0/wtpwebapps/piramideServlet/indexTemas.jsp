<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="trataTema" method="post">
		<h3>Selecciona un tema:
		<select name="tema" requierd> 
			<option value="imagenes/11.jpg" selected>Naturaleza</option>
			<option value="imagenes/22.jpg">Espacio</option>
			<option value="imagenes/33.jpg">Coches</option>
			<option value="imagenes/44.jpg">Oceanos</option>
		</select>
		</h3>
		<h3>Nombre:</h3>
		<input type="text" name="nombre" placeholder="Escribe tu nombre"/> 
		<h3>Apellidos:</h3>
		<input type="text" name="apellidos" placeholder="Escribe tus apellidos"/>
		<h3>Comentario:</h3>
		<textarea name="textArea" rows="10" cols="50" placeholder="Escribe algun comentario"></textarea>
		<p><input type="submit" name="enviar" value="enviar"/>
		<input type="submit" name="borrar" value="limpiar"/></p>
		
	</form>
	
</body>
</html>