<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Calculadora Basica</h1>
<form action="trataCalculadora" method="post">
	<table border="2">
		<tr>
			<th>Operando A</th>
			<th>Operador</th>
			<th>Operando B</th>
		</tr>
		<tr>
			<td><input type="number" name="opA" min="0" step="0.1"></</td>
			<td><select id="title" name="selectOp">
			 <option value="+">+</option>
			 <option value="-">-</option>
			 <option value="*">*</option>
			 <option value="/">/</option>
			</select></</td>
			<td><input type="number" name="opB" min="0" step="0.1"></</td>
		</tr>
	</table>
	
<input type="reset" value="Borrar">
<input type="submit" value="Enviar">
	
</form>
</body>
</html>