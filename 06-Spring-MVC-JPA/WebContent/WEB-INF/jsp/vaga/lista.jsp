<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<tags:template titulo="Lista de Vaga">
	<h1>Lista de Vaga</h1>
	
	<table class="table">
		<tr>
			<th>Título</th>
			<th>Salário</th>
			<th>Requisitos</th>
			<th>Empresa</th>
			<th>Nível</th>
			<th>Data</th>
		</tr>
		<c:forEach items="${vagas }" var="v">
			<tr>
				<td>${v.titulo }</td>
				<td>${v.salario }</td>
				<td>${v.requisitos }</td>
				<td>${v.empresa.nome }</td>
				<td>${v.nivel.label }</td>
				<td>
					<fmt:formatDate value="${v.data.time }"
						pattern="dd/MM/yyyy"/>
				</td>
			</tr>
		</c:forEach>
	</table>
	
	
</tags:template>








