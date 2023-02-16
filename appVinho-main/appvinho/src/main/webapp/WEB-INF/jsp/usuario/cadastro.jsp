<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">	
	<meta charset="ISO-8859-1">
	<title>App Vinho</title>
</head>
<body>
	<div class="container">
		<form action="/usuario/incluir" method="post">
			<h3>Cadastro de Usuário</h3>

			<div class="form-group">
				<label>Nome:</label> 	
				<input type="text" name="nome" value="Leonardo Moraes" class="form-control">
			</div>

			<div class="form-group">
				<label>Senha:</label>
				<input type="password" name="senha" value="123" class="form-control">
			</div>

			<div class="form-group">
				<label>E-mail:</label>
				<input type="email" name="email" value="leonardo@gmail.com" class="form-control">
			</div>

			<div class="form-group">
				<label>Idade:</label> 	
				<input type="text" name="idade" value="44" class="form-control">
			</div>

			<div class="form-group">
				<label>CPF:</label> 	
				<input type="text" name="salario" value="999999" class="form-control">
			</div>

			<div class="form-group">
				<label>Programa Fidelidade:</label>
			    <div class="form-check">
			      <label class="form-check-label">
			        <input type="checkbox" name="caracteristicas" value="De" class="form-check-input" > Cliente Master
			      </label>
			    </div>
			    <div class="form-check">
			      <label class="form-check-label">
			        <input type="checkbox" name="caracteristicas" value="An" checked class="form-check-input"> Cliente Standard
			      </label>
			    </div>
			    <div class="form-check">
			      <label class="form-check-label">
		        		<input type="checkbox" name="caracteristicas" value="Da" class="form-check-input"> Novo Cliente
			      </label>
			    </div>
			</div>

			<div class="form-group">						
				<label>Modelo de Compra:</label>			
				<div class="form-check">
				  <label class="form-check-label">
				    <input type="radio" name="tipo" value="P" class="form-check-input" >Compra Express 
				  </label>
				</div>			
				<div class="form-check">
				  <label class="form-check-label">
					<input type="radio" name="tipo" value="D" class="form-check-input">Compra Standard
				  </label>
				</div>			
				<div class="form-check">
				  <label class="form-check-label">
				    <input type="radio" name="tipo" value="A" checked class="form-check-input">Retirada na Loja
				  </label>
				</div>			
			</div>

			<div class="form-group">
				<label>Região do País:</label>
				<select name="setor" class="form-control">
					<option value="1">Norte</option>
					<option value="2">Nordeste</option>
					<option value="3" selected>Sul</option>
					<option value="3" selected>Sudeste</option>
					<option value="3" selected>Centro-Oeste</option>
				</select>
			</div>
			<button type="submit">Cadastrar</button>
		</form>
	</div>
</body>
</html>