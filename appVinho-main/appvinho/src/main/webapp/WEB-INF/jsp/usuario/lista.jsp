<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
 	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<meta charset="ISO-8859-1">
	<title>AppLanche</title>
</head>
<body>

	<div class="container">
		<form action="/usuario" method="get">
			<h3>Listagem de Usuários</h3>

		<c:if test="${not empty mensagem}">
		<div class="alert alert-success">
			<strong>Atenção!</strong> ${mensagem}
		</div>
		</c:if>

			<button type="submit">Novo</button>
		</form>

	<c:if test="${empty usuarios}">
	<h5>Não existem usuários cadastrados</h5>
	</c:if>
	
	<c:if test="${not empty usuarios}">
	<h5>Quantidade de usuários cadastrados: ${usuarios.size()}!!</h5>
	
	

		<table class="table table-striped">
		  <thead>
		    <tr>
		      <th>Nome</th>
		      <th>Senha</th>
		      <th>E-mail</th>
		      <th>Características</th>
		      <th>Tipo</th>
		      <th>Setor</th>
		      <th>Idade</th>
		      <th>Salário</th>
		    </tr>
		  </thead>
		  <tbody>
		  
		  
		  <c:forEach var="u" items="${usuarios}">
		    <tr>
		      <td>${u.nome}</td>
		      <td>${u.senha}</td>
		      <td>${u.email}</td>
		      <td>${u.caracteristicas}</td>
		      <td>${u.tipo}</td>
		      <td>${u.setor}</td>
		      <td>${u.idade}</td>
		      <td>${u.salario}</td>
		    </tr>
		</c:forEach>
		  </tbody>
		</table>		
		</c:if>
	</div>

</body>
</html>