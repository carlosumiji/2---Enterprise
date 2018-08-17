<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tags:template titulo="Cadastrar">
	<c:if test="${not empty msg }">
		<div class="alert alert-success">
			${msg }
		</div>
	</c:if>
	
	
	<form>
		<div class="form-group">
			<label for="id-qtd">Quantidade de Pesssoas</label>
			<input type="text" name="quantidade" id="id-qtd" class="form-control">
		</div>
		<div class="form-group">
			<label for="id-end">Endereco</label>
			<input type="text" name="endereco" id="id-end" class="form-control">
		</div>
		<div class="form-group">
			<input type="checkbox" name="lembracinha" id="id-lem">
						<label for="id-lem">Lembracinha</label>
		</div>
		<div class="form-group">
			<label for="id-cardapio">Cardápio</label>
			<textarea rows="5" cols="" name="cardapio" id="id-cardapio" class="form-control"></textarea>
		</div>
		
	</form>
</tags:template>



