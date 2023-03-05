<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<meta charset="ISO-8859-1">
	<title>Listagem de Vinhos Brancos</title>
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp"/>

	<div class="container">

		<h3>Listagem de Vinhos Brancos</h3>
		
			<c:if test="${not empty mensagem}">		
			<div class="alert alert-success">
			  <strong>Atenção!</strong> ${mensagem}
			</div>		
		</c:if>		
		
		<form action="/branco" method="get">
		<button type="submit">Novo</button>
		</form>
		
		<c:if test="${empty brancos}">
			<h5>Não existem vinhos brancos cadastrados!!!</h5>
		</c:if>
		
		<c:if test="${not empty brancos}">
			<h5>Quantidade de vinhos brancos cadastrados: ${brancos.size()}!!!</h5>
	
			<table class="table table-striped">
			  <thead>
			    <tr>
			      <th>ID</th>
			      <th>Nome</th>
			      <th>Espumante</th>
			      <th>Pack</th>
			      <th>Marca</th>
			      <th></th>
			    </tr>
			  </thead>
			  <tbody>

			  	<c:forEach var="b" items="${brancos}">
				    <tr>
				      <td>${b.id}</td>
				      <td>${b.nome}</td>
				      <td>${b.espumante}</td>
				      <td>${b.pack}</td>
				      <td>${b.marca}</td>
				      <td><a href="/branco/${b.id}/excluir">excluir</a></td>
				    </tr>
			    </c:forEach>
			  </tbody>
			</table>
		</c:if>
	</div>

</body>
</html>