<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<tags:template titulo="Orçamentos">
	<h1>Orçamentos</h1>
	
	<c:if test="${not empty msg }">
		<div class="alert alert-success">${msg }</div>	
	</c:if>
	
	<table class="table table-striped">
		<tr>
			<th>Código</th>
			<th>Descrição</th>
			<th>Valor</th>
			<th>Data</th>
			<th>Aprovado</th>
			<th></th>
		</tr>
		<c:forEach items="${orcamentos }" var="orc">
			<tr>
				<td>${orc.codigo }</td>
				<td>${orc.descricao }</td>
				<td>${orc.valor }</td>
				<td>
					<fmt:formatDate value="${orc.data.time }" pattern="dd/MM/yyyy"/>
				</td>
				<td>${orc.aprovado?"Sim":"Não" }</td>
				<td>
					<c:if test="${!orc.aprovado }">
						<!-- Button trigger modal -->
						<button onclick="codigoAprovar.value = ${orc.codigo}" type="button" class="btn btn-outline-success" data-toggle="modal" data-target="#exampleModal1">
						  	Aprovar
						</button>	
						<a class="btn btn-outline-primary" 
							href="<c:url value="/orcamento/editar/${orc.codigo }"/>">Editar</a>
						<!-- Button trigger modal -->
						<button onclick="codigoExcluir.value = ${orc.codigo}" type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#exampleModal">
						  	Excluir
						</button>	
					</c:if>
				</td>
			</tr>
		</c:forEach>
	</table>

<!-- Modal Aprovar-->
<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Confirmação</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Deseja realmente aprovar o orçamento?
      </div>
      <div class="modal-footer">
      	<c:url value="/orcamento/aprovar" var="acao"/>
      	<form action="${acao }" method="post">
	      	<input type="hidden" name="codigo" id="codigoAprovar">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Não</button>
	        <button type="submit" class="btn btn-success">Sim</button>
        </form>
      </div>
    </div>
  </div>
</div>

<!-- Modal Excluir -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Confirmação</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Deseja realmente apagar o orçamento?
      </div>
      <div class="modal-footer">
      	<c:url value="/orcamento/remover" var="acao"/>
      	<form action="${acao }" method="post">
	      	<input type="hidden" name="codigo" id="codigoExcluir">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Não</button>
	        <button type="submit" class="btn btn-danger">Sim</button>
        </form>
      </div>
    </div>
  </div>
</div>
	
</tags:template>