<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sistema de Recrutamento</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
</head>
<body>

	<div class="container">
		<div class="panel-group">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h2>Sistema de Recrutamento</h2>
				</div>
				
				<div class="panel-body">
					<div class="btn-group">
						<form action="/usuario">
							<button type="submit" class="btn btn-link">Novo Usuário</button>
						</form>
					</div>
				</div>
			</div>
	</div>
	<c:if test="${not empty mensagem}">
			<div class="alert alert-warning">
			  <strong>Não foi possível atende a sua solicitação!</strong> ${msg}
			</div>
		</c:if>
	
		<form action="/usuario/login" method="post">
		
		    <div class="form-group" style='background-color:lightgreen'>		
			<label>Informe o seu email:</label>
			<input type="email" class="form-control" name="email">
			</div>
			
			<div class="form-group" style='background-color:lightgreen'>		
			<label>Informe a sua senha</label>
			<input type="password" class="form-control" name="senha">
			</div>
			
			
			<button type="submit">Login</button>
			</form>
		 	
	</div>
		
</body>
</html>