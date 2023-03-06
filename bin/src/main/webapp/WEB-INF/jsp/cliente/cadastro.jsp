<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	<link rel="stylesheet"
	<meta charset="ISO-8859-1">
	<title>Cadastro de Cliente</title>
</head>
<body>

<div class="container">
	<form action="usuario" method="post">
	<h3>Leonardo Moraes</h3>
	
	<div class="form-group">
		<label>Nome:</label>
		<input type="text" name="nome" value="Leonardo Moraes" class="form-control">
	</div>
	
	<div class="form-group">
		<label>Senha: </label>
		<input type="password" name="senha" value="123" class="form-control">
	</div>
	
	<div class="form-group">
		<label>E-mail: </label>
		<input type="email" name="email" value="leonardomoraes@gmail.com" class="form-control">
	</div>
	
	<div class="form-group">
		<label>Idade: </label>
		<input type="text" name="idade" value="44" class="form-control">
	</div>
	
	<div class="form-group">
		<label>Salário: </label>
		<input type="text" name="salario" value="999999" class="form-control">
	</div>
	
	<div class="form-group">
		<label>Características: </label>
		<div class="form-check">
			<label class="form-check-label">
				<input type="checkbox" name="caracteristicas" value="De" class="form-control">
			</label>
		</div>
		<div class="form-check">
			<label class="form-check-label">
				<input type="checkbox" name="caracteristicas" value="An" 
			</label>
		</div>
		<div class="form-check">
			<label class="form-check-label">
				<input type="checkbox" name="caracteristicas" value="Da" 
			</label>
		</div>
	</div>
		<div class="form-group">
			<label>Tipo: </label>
			<div class="form-check">
			<label class="form-check-label">
				<input type="radio" name="tipo" value="P" class="" 
			</label>
		</div>
		<div class="form-check">
			<label class="form-check-label">
				<input type="radio" name="tipo" value="D" class="" 
			</label>
		</div>
		<div class="form-check">
			<label class="form-check-label">
				<input type="radio" name="tipo" value="A" checked class="" 
			</label>
		</div>
	</div>

	<div class="form-group">
		<label>Setor: </label>
		<select name="setor" class="form-control">
			<option value="1">Diretoria</option>
			<option value="2">Comercial</option>
			<option value="3" selected>Desenvolvimento</option>
		</select>
	</div>
	<button type="submit">Cadastrar</button>
</form>
</div>
</body>
</html>