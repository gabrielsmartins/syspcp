<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista - Material</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>Descrição</th>
				<th>Unidade</th>
				<th>Quantidade Estoque</th>
				<th>Quantidade Mínima</th>
				<th>Preço</th>
				<th>Peso</th>
				<th>Comprimento</th>
				<th>Largura</th>
				<th>Altura</th>
				<th>Situação</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${materialList}" var="unidade">
				<tr>
					<td>${material.id}</td>
					<td>${material.descricao}</td>
					<td>${material.unidadeMedida.sigla}</td>
					<td>${material.quantidadeEstoque}</td>
					<td>${material.quantidadeMinima}</td>
					<td>${material.preco}</td>
					<td>${material.comprimento}</td>
					<td>${material.largura}</td>
					<td>${material.altura}</td>
					<td>${material.situacao}</td>
			</c:forEach>
		</tbody>
	</table>
	<div id="mensagem">
		<strong>${mensagem}</strong>
	</div>
</body>
</html>