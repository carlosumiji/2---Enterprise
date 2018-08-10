<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Academia</title>
</head>
<body>
	<form action="cadastrar" method="post">
		<h2>Cadastro Aluno</h2>
		<div>
			<label for="id-nome">Nome:</label>
			<input type="text" name="nome" id="id-nome">
		</div>
		<div>
			<label for="id-plano">Plano</label>
			<select name="plano" id="id-plano">
				<option>Mensal</option>
				<option>Semestral</option>
				<option>Anual</option>
			</select>
		</div>
		<div>
			<input type="checkbox" name="matriculado" id="id-matriculado">
			<label for="id-matriculado">Matriculado</label>
		</div>
		<div>
			<input type="radio" name="genero" id="fem" value="Feminino">
			<label for="id-feminino">Feminino</label></br>
			<input type="radio" name="genero" id="masc" value="Masculino">
			<label for="id-masculino">Masculino</label>

		</div>
		<div>
			<input type="submit" value="Enviar">
		</div>
	</form>
</body>
</html>