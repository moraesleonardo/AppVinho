<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<meta charset="ISO-8859-1">
	<title>Cadastro de Vinhos Tintos</title>
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp"/>

	<div class="container">
		<form action="/tinto/incluir" method="post">
			<h3>Cadastro de Vinhos Tintos</h3>
			
			<div class="form-group">
				<label>Nome:</label> 	
				<input type="text" name="nome" value="Casal Garcia" class="form-control">
			</div>
			
			<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="gelada" id="inlineRadio1" value="option1">
  				<label class="form-check-label" for="inlineRadio1">Gelada</label>
			</div>
			<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="gelada" id="inlineRadio2" value="option2">
  				<label class="form-check-label" for="inlineRadio2">Ambiente</label>
			</div>
			
			<form class="form-inline">
  			<label class="my-1 mr-2" for="inlineFormCustomSelectPref">Tamanho da Garrafa</label>
  			<select class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref">
    			<option selected>...</option>
    			<option value="500">500 ml</option>
    			<option value="1000">1 L</option>
    			<option value="2000">2 L</option>
    		</select>
			
			<div class="form-group">
				<label>Marca:</label>
				<input type="text" name="marca" value="Vinho Italiano" class="form-control">
			</div>
			
			<button type="submit">Cadastrar</button>
		</form>
	</div>
</body>
</html>
