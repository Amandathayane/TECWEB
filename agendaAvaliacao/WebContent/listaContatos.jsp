<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista Contatos</title>
</head>
<body>
	<h1>Minha lista de contatos</h1><br>
	
	<table style="border:1px solid #000">
		<tr> 
			<th>Nome</th>
			<th>E-mail</th>
			<th>Telefone</th>
			<th>Endereço</th>
			<th>Senha</th>
		</tr>
		
		<c:forEach items="${contatos}" var="contato">
		<tr>
			<td style="border:1px solid #000">${contato.nome}</td>
			<td style="border:1px solid #000">${contato.email}</td>
			<td style="border:1px solid #000">${contato.telefone}</td>
			<td style="border:1px solid #000">${contato.endereco}</td>
			<td style="border:1px solid #000">${contato.senha}</td>
		</tr>
		</c:forEach>
	</table>
	<br><br>
	
	<form action="cadastroContato.jsp" method="POST">
		<input type="submit" value="Cadastrar novo contato">
	</form>
	<br>
	<form action="menu.jsp" method="POST">
		<input type="submit" value="Voltar para o menu">
	</form>
	
</body>
</html>