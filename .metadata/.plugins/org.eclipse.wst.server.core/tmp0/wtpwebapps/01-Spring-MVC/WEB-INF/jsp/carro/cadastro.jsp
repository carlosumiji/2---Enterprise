<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro Carro</title>
</head>
<body>
	
	<h1>Cadastro de Carro</h1>
	
	<form action="cadastro" method="post">
		<div>
			<label>Placa</label>
			<input type="text" name="placa" id="id-placa">
		</div>
		<div>
			<label>Pre�o</label>
			<input type="text" name="preco" id="id-preco">
		</div>
		<div>
			<input type="checkbox" name="automatico">
			<label>Autom�tico</label>
		</div>
		<div>
			<label>Marca</label>
			<select name="marcas">
				<option></option>
				<option>Ford</option>
				<option>Fiat</option>
				<option>Tesla</option>
			</select>
		</div>	
		<input type="submit" name="OK" value="OK"> 
	</form>
	${msg }
	${placa }
</body>
</html>