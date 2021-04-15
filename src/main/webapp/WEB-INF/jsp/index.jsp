<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
	
		<h3>${user.nome}</h3>
		<h4>${user.email}</h4>
		<h4><a href="${git}">GIT</a></h4>
		
		<div class="panel-body">
		<div class="btngroup">
		<form action="/vaga" method="get">
			<button type="submit" style='background-color:lightgreen'>Nova Vaga</button>
		</form>	
		</div>
	</div>
		<div class="panel-body">
		<div class="btngroup">
		<form action="/candidato" method="get">
			<button type="submit" style='background-color:lightblue'>Novo Candidato</button>
		</form>	
		</div>
		
		<div class="panel-body">
		<div class="btngroup">
		<form action="/usuario" method="get">
			<button type="submit" style='background-color:lightyellow'>Novo Usuário</button>
		</form>	
		</div>
	</div>
	  
	</div>
</div>
</body>
</html>