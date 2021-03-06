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
					<h2> Cadastramento de candidatos</h2>
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
		
		<form action="/candidato/incluir" method="post">
			
		    <div class="form-group" style='background-color:lightgreen'>		
				<label>Informe o seu nome:</label>
				<input type="text" name="nome" class="form-control">
			</div>
			
			 <div class="form-group" style='background-color:lightpink'>		
				<label>Informe o seu email:</label>
				<input type="text" name="nome" class="form-control">
			</div>
			
			 <div class="form-group" style='background-color:lightyellow'>		
				<label>Informe o telefone:</label>
				<input type="text" name="nome" class="form-control">
			</div>
			
			
			<button type="submit">Gravar</button>
		
		</form>
		 	
		
		
		<c:if test="${not empty lista}">
		
  		<h2>Listagem de candidatos </h2>
  			          
  		<table class="table">
    	<thead>
      	<tr>
	        <th style='background-color:lightgreen'>Nome</th>
	        <th style='background-color:lightblue'>Email</th>
	        <th style='background-color:lightpink'>Telefone</th>
	      </tr>
	    </thead>
	    <tbody>
	      <c:forEach var="c" items="${lista}">
	      <tr>
	        <td>${c.nome}</td>
	        <td><a href="/candidato/${c.id}/excluir">excluir</a></td>
	      </tr>
	      </c:forEach>
	    </tbody>
	    	<c:forEach var="u" items="${lista}">
	      	<tr>
	        	<td>${c.nome}</td>
	        	<td>${c.email}</td>
            	<td>${c.telefone}</td>
	        	<td><a href="/candidato/${c.id}/excluir">excluir</a></td>
	      	</tr>
	      </c:forEach>
	  </table>
	  </c:if>
	  
	  <c:if test="${empty lista}">
	  	<h2>Nenhum candidato cadastrado !!!</h2>
	  </c:if>
	  
	</div>
		
</body>
</html>