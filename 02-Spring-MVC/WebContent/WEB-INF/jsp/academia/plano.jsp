<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="cadastrar" method="post">
	<div>
		<label for="id-plano">Plano</label>
		<select name="plano" id="id-plano">
			<option>Mensal</option>
			<option>Semestral</option>
			<option>Anual</option>
		</select>
	</div>
	<div>
		<label for="id-valor">Valor</label>
		<input type="text" name="valor" id="id-valor"> 
	</div>
	<div>
		<label for="id-descricao">Descrição</label></br>
		<textarea rows="5" name="descricao" id="id-descricao"></textarea>
	</div>
	<div>
		<input type="submit" value="OK">
	</div>
</form>
	${msg }
	${p.plano }
	${p.valor }
	${p.descricao }
</body>
</html>