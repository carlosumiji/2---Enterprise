<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contato</title>
</head>
<body>

	<h1>Contato</h1>
	<form action="enviar" method="post">
		<fieldset>
		<div>
			<label>Nome:</label>
			<input type="text" name="nome" id="id-nome">
		</div>
		<div>
			<label>E-mail:</label>
			<input type="text" name="email" id="id-email">
		</div>
		<div>
			<label>Telefone</label>
			<input type="text" name="telefone" id="id-telefone">
		</div>
			<input type="submit" value="Enviar">
		</fieldset>
	</form>
	${msg}
	${nome}
</body>
</html>