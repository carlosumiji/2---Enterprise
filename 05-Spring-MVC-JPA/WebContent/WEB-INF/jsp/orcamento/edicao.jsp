<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<tags:template titulo="Or�amento">
	
	<h1>Edi��o de Or�amento</h1>
	
	<c:url value="/orcamento/editar" var="acao"/>
	<form:form action="${acao }" method="post" commandName="orcamento">
		<form:hidden path="codigo"/>
		<form:hidden path="aprovado"/>
		<div class="form-group">
			<form:label path="descricao">Descri��o</form:label>
			<form:textarea path="descricao" cssClass="form-control"/>
		</div>
		<div class="form-group">
			<form:label path="data">Data</form:label>
			<form:input path="data" cssClass="form-control"/>
		</div>
		<div class="form-group">
			<form:label path="valor">Valor</form:label>
			<form:input path="valor" cssClass="form-control"/>
		</div>
		<input type="submit" value="Editar" class="btn btn-primary">
	</form:form>
	
</tags:template>