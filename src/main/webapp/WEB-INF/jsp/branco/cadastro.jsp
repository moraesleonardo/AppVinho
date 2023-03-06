<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<meta charset="ISO-8859-1">
	<title>Cadastro de Vinhos Brancos</title>
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp"/>

	<div class="container">
		<form action="/branco/incluir" method="post">
			<h3>Cadastro de Vinhos Brancos</h3>
			
			<div class="form-group">
				<label>Nome:</label> 	
				<input type="text" name="nome" value="Casal Garcia" class="form-control">
			</div>
			
			<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="espumante" id="inlineRadio1" value="true">
  				<label class="form-check-label" for="inlineRadio1">Espumante</label>
			</div>
			<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="espumante" id="inlineRadio2" value="false">
  				<label class="form-check-label" for="inlineRadio2">Outros tipos</label>
			</div>
			
			<form class="form-inline">
  				<label class="my-1 mr-2" for="inlineFormCustomSelectPref">Quantidade</label>
  				<select class="custom-select my-1 mr-sm-2" name="pack" id="inlineFormCustomSelectPref">
    				<option selected>...</option>
    				<option value="4">4</option>
    				<option value="5">5</option>
    				<option value="6">6</option>
    				<option value="7">7</option>
    				<option value="8">8</option>
    				<option value="9">9</option>
    				<option value="10">10</option>
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
