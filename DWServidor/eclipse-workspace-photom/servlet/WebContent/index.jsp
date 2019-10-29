<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>captura Datos</title>
</head>
<body>
<%// implementamos un mvc modelo-->clase Alumno, controlador-->servlet muestraRegistro, vista->muestraDatos e index %>

<!-- poner en action solo el nombre muestraRegistro -->
<h1>Hola! Proporciona tus datos:</h1>
<form action="muestraRegistro" method="post">							<!-- Nombre del servlet sin . -->
<table border="1" >
<tr>
<td> Nombre: </td>
<td><input type="text" name="nombre"></td>
</tr>
<tr>
<td> Apellidos: </td>
<td> <input type="text" name="apellidos"> </td>
</tr>
<tr>
<td> Promedio: </td>
<td> <input type="number" name="promedio" min="0" step="0.1"> </td>							<!-- ojo al paso es 0.1 pasa de un decimal en otro -->
</tr>
</table>
<input type="reset" value="Borrar">
<input type="submit" value="Enviar">
</form>
</body>
</html>
