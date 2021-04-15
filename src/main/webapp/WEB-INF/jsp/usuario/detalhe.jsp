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
					<h2> Cadastramento de usuários</h2>
				</div>
				
				<div class="panel-body">
					<div class="btn-group">
						<form action="/home">
							<button type="submit" class="btn btn-link">Home</button>
						</form>
					</div>
				</div>
			</div>
	</div>
	
	<c:if test="${not empty mensagem}">
			<div class="alert alert-warning">
			  <strong>Algo deu errado. Tente novamente!</strong>${mensagem}
			</div>
		</c:if>
		
		<form action="/usuario/incluir" method="post">
			
		    <div class="form-group" style='background-color:lightgreen'>		
			<label>Nome:</label>
			<input type="text" name="nome" class="form-control">
			</div>
			
			<div class="form-group" style='background-color:lightblue'>		
			<label>Email:</label>
			<input type="text" name="email" class="form-control">
			</div>
			
			<div class="form-group" style='background-color:lightyellow'>		
			<label>Senha:</label>
			<input type="password" name="senha" class="form-control">
			</div>
			
			<div class="form-group" style='background-color:lightpink'>		
			<label>GitHub:</label>
			<input type="text" name="git" class="form-control">
			</div>
			
			<button type="submit">Gravar</button>
			<div class="btn-group">
				<a href="${voltar}" class="btn btn-default" role="button">Voltar</a>
			</div>
		
		</form>
		 	
		
		
		<c:if test="${not empty lista}">
		
		<h2>Listagem de usuários </h2>
  			          
		<table class="table">
    	<thead>
      	<tr>
	        <th style='background-color:lightgreen'>Nome</th>
	        <th style='background-color:lightblue'>Email</th>
	        <th style='background-color:lightpink'>Github</th>
	      </tr>
	    </thead>
	    <tbody>
	      <c:forEach var="u" items="${lista}">
	      	<tr>
	        	<td>${u.nome}</td>
	        	<td>${u.email}</td>
            	<td>${u.git}</td>
	        	<td><a href="/usuario/${c.id}/excluir">excluir</a></td>
	      	</tr>
	      </c:forEach>
	    </tbody>
	  </table>
		
	  </c:if>
	  
	  <c:if test="${empty lista}">
	  	<h2>Nenhum usuário cadastrado !!!</h2>
	  </c:if>
	  
	</div>
		
</body>
</html>