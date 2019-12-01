<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="peticionInformacion">					<!-- en este caso en los parametros en el servlet no se mostrara los parametros ya que los pasamos por post -->
	nombre<input type="text" name="nombre" required/><br/>
	clave<input type="password" name="clave" required/><br/>
	
	<input type="submit" name="enviar" value="enviar"/> <br/>
</form>
</body>
</html>