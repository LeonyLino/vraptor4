
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<link rel="stylesheet" href="../bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="../base.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<form action="adiciona" method="post">
			Nome: <input type="text" name="produto.nome" value="${produto.nome}" class="form-control"/>
			Valor: <input type="text" name="produto.valor" value="${produto.valor}" class="form-control"/>
			Quantidade: <input type="text" name="produto.quantidade" value="${produto.quantidade}" class="form-control"/>
			<input type="submit" value="Adicionar" class="btn btn-primary"/>
		</form>
	</div>
	<c:if test="${not empty errors}">
		<div class="alert alert-danger">
			<c:forEach items="${errors}" var="erro">
				${error.category} - ${erro.message}<br/>
			</c:forEach>
		</div>
	</c:if>
</body>
</html>