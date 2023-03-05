<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<meta charset="ISO-8859-1">
	<title>Cadastro de Vinhos Rose</title>
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp"/>

	<div class="container">
		<form action="/rose/incluir" method="post">
			<h3>Cadastro de Vinhos Rose</h3>
			
			<div class="form-group">
				<label>Nome:</label> 	
				<input type="text" name="nome" value="Casal Garcia" class="form-control">
			</div>
			
			<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="best_seller" id="inlineRadio1" value="option1">
  				<label class="form-check-label" for="inlineRadio1">Best Seller</label>
			</div>
			<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="best_seller" id="inlineRadio2" value="option2">
  				<label class="form-check-label" for="inlineRadio2">Outros</label>
			</div>
			
			<form class="form-inline">
  				<label class="my-1 mr-2" for="inlineFormCustomSelectPref">Quantidade de Prêmios</label>
  				<select class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref">
    				<option selected>...</option>
    				<option value="0">Nenhum</option>
    				<option value="1">1</option>
    				<option value="2">2</option>
    				<option value="3">3</option>
    			</select>
					
			<div class="form-group">
				<label>Marca:</label>
				<input type="text" name="marca" value="Chardonay" class="form-control">
			</div>
			
			<button type="submit">Cadastrar</button>
		</form>
	</div>
</body>
</html>
