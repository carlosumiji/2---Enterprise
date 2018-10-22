<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<tags:template titulo="Cadastro de Vaga">
	<h1>Cadastro de Vaga</h1>
	
	<c:if test="${not empty msg }">
		<div class="alert alert-success">${msg }</div>
	</c:if>
	
	<c:url value="/vaga/cadastrar" var="acao"/>
	<form:form action="${acao }" method="post" commandName="vaga">
		<div class="form-group">
			<form:label path="titulo">Título</form:label>
			<form:input path="titulo" cssClass="form-control"/>
			<form:errors path="titulo" cssStyle="color:red"/>
		</div>
		<div class="form-group">
			<form:label path="data">Data Limite</form:label>
			<form:input path="data" cssClass="form-control"/>
			<form:errors path="data" cssStyle="color:red"/>
		</div>
		<div class="form-group">
			<form:label path="salario">Salário</form:label>
			<form:input path="salario" cssClass="form-control"/>
			<form:errors path="salario" cssStyle="color:red"/>
		</div>
		<div class="form-group">
			<form:label path="requisitos">Requisitos</form:label>
			<form:textarea path="requisitos" cssClass="form-control"/>
			<form:errors path="requisitos" cssStyle="color:red"/>
		</div>
		<div class="form-group">
			<form:label path="empresa">Empresa</form:label>
			<form:select path="empresa.codigo" cssClass="form-control">
				<form:option value="0">Selecione</form:option>
				<form:options items="${empresas }"
					itemLabel="nome" itemValue="codigo"/>
			</form:select>		
		</div>
		<div class="form-group">
			<form:label path="nivel">Nível</form:label>
			<form:select path="nivel" cssClass="form-control">
				<form:options items="${niveis }" itemLabel="label"/>
			</form:select>
		</div>
		<input type="submit" value="Cadastrar" class="btn btn-primary">
	</form:form>
	
</tags:template>








