<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro</title>
</head>
<body>
	<fieldset>
		<form action="CadastroContatoServlet" method="POST">
		
		Nome <input name="nome" id="nome" type="text"> <br><br>
		E-mail <input name="email" id="email" type="text"><br><br>
		Telefone <input name="telefone" id="telefone" type="text"><br><br>
		Endereco <input name="endereco" id="endereco" type="text"><br><br>
		Senha <input name="senha" id="senha" type="password"><br><br><br>
		
		<input type="submit" value="Cadastrar">
		</form>
		<br>
		
		<form action="menu.jsp" method="POST">
			<input type="submit" value="Voltar">
		</form>
		
		<p>${erro}</p>
		
	</fieldset>
</body>
</html>