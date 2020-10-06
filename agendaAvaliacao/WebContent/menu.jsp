<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu</title>
</head>
<body>
	<div align="center">
		<% out.println ("Seja bem vinda "); %>
		${login}
	</div>
	
	<h3>Menu</h3>
	
	<form action="cadastroContato.jsp" method="POST">
		<input type="submit" value="Cadastrar contato">
	</form>
	<br>

	<form action="CadastroContatoServlet" method="GET">
		<input type="submit" value="Lista de contatos">
	</form>
	<br>

	<form action="login.jsp" method="POST">
		<input type="submit" value="Sair">
	</form>
	
</body>
</html>