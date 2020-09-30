<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="projeto.Agenda" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<form id="form-agenda" action="Agenda" method="POST">
		
		Login: <input type="text" name="login" id="login"/><br><br>
		Senha: <input type="password" name="senha" id="senha"/><br><br>
		
		<input type="submit" value="Logar" id="logar"/>
	</form>
</body>
</html>