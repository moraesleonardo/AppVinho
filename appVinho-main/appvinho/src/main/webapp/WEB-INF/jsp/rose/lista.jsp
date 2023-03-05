<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<meta charset="ISO-8859-1">
	<title>Listagem de Vinhos Rosé</title>
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp"/>

	<div class="container">

		<h3>Listagem de Vinhos Rosé</h3>
		
			<c:if test="${not empty mensagem}">		
			<div class="alert alert-success">
			  <strong>Atenção!</strong> ${mensagem}
			</div>		
		</c:if>		
		
		<form action="/rose" method="get">
		<button type="submit">Novo</button>
		</form>
		
		<c:if test="${empty roses}">
			<h5>Não existem vinhos rosé cadastrados!!!</h5>
		</c:if>
		
		<c:if test="${not empty roses}">
			<h5>Quantidade de vinhos rosé cadastrados: ${roses.size()}!!!</h5>
	
			<table class="table table-striped">
			  <thead>
			    <tr>
			      <th>ID</th>
			   	  <th>Nome</th>
			      <th>best_seller</th>
			      <th>premios</th>
			      <th>marca</th>
			      <th></th>
			    </tr>
			  </thead>
			  <tbody>

			  	<c:forEach var="r" items="${roses}">
				    <tr>
				      <td>${r.id}</td>
				      <td>${r.nome}</td>
				      <td>${r.best_seller}</td>
				      <td>${r.premios}</td>
				      <td>${r.marca}</td>
				      <td><a href="/rose/${r.id}/excluir">excluir</a></td>
				    </tr>
			    </c:forEach>
			  </tbody>
			</table>
		</c:if>
	</div>

</body>
</html>