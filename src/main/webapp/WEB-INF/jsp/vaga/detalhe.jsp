<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TP3 Java WEB</title>
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
					<h2> Cadastramento de vagas</h2>
				</div>
				
				<div class="panel-body">
					<div class="btn-group">
						<form action="/">
							<button type="submit" class="btn btn-link">Home</button>
						</form>
					</div>
				</div>
			</div>
	</div>
		
		<form action="/vaga/incluir" method="post">
			
		    <div class="form-group" style='background-color:lightgreen'>		
			<label>Informe a vaga</label>
			<input type="text" class="form-control" name="vaga">
			</div>
			
			
			<button type="submit">Gravar</button>
		
		</form>
		 	
		
		
		<c:if test="${not empty usuarios}">
		
  		<h2>Listagem de usuários </h2>
  			          
  		<table class="table">
    	<thead>
      	<tr>
	        <th style='background-color:lightgreen'>Nome</th>
	        <th style='background-color:lightblue'></th>
	        <th style='background-color:lightpink'></th>
	      </tr>
	    </thead>
	    <tbody>
	      <c:forEach var="s" items="${lista}">
	      <tr>
	        <td>${s.nome}</td>
	        <td><a href="/vaga/${s.id}/excluir">excluir</a></td>
	      </tr>
	      </c:forEach>
	    </tbody>
	  </table>
	  </c:if>
	  
	  <c:if test="${empty usuarios}">
	  	<h2>Nenhuma vaga cadastrada !!!</h2>
	  </c:if>
	  
	</div>
		
</body>
</html>