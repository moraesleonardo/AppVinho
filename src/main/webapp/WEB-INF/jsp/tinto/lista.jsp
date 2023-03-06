<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<meta charset="ISO-8859-1">
	<title>Listagem de Vinhos Tintos</title>
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp"/>

	<div class="container">

		<h3>Listagem de Vinhos Tintos</h3>
		
			<c:if test="${not empty mensagem}">		
			<div class="alert alert-success">
			  <strong>Atenção!</strong> ${mensagem}
			</div>		
		</c:if>		
		
		<form action="/tinto" method="get">
		<button type="submit">Novo</button>
		</form>
		
		<c:if test="${empty tintos}">
			<h5>Não existem vinhos tintos cadastrados!!!</h5>
		</c:if>
		
		<c:if test="${not empty tintos}">
			<h5>Quantidade de vinhos tintos cadastrados: ${tintos.size()}!!!</h5>
	
			<table class="table table-striped">
			  <thead>
			    <tr>
			      <th>ID</th>
			        <th>Nome</th>
			      <th>Gelada</th>
			      <th>Tamanho</th>
			      <th>Marca</th>
			      <th></th>
			    </tr>
			  </thead>
			  <tbody>

			  	<c:forEach var="t" items="${tintos}">
				    <tr>
				      <td>${t.id}</td>
		         	  <td>${t.nome}</td>
				      <td>${t.gelada}</td>
				      <td>${t.tamanho}</td>
				      <td>${t.marca}</td>
				      <td><a href="/tinto/${t.id}/excluir">excluir</a></td>
				    </tr>
			    </c:forEach>
			  </tbody>
			</table>
		</c:if>
	</div>

</body>
</html>