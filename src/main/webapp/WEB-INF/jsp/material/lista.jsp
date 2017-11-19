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
				<th>Código Interno</th>
				<th>Unidade</th>
				<th>Quantidade Estoque</th>
				<th>Quantidade Mínima</th>
				<th>Valor Unit (R$)</th>
				<th>Peso (KG)</th>
				<th>Comprimento (mm)</th>
				<th>Largura (mm)</th>
				<th>Altura (mm)</th>
				<th>Situação</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${materialList}" var="material">
				<tr>
					<td>${material.id}</td>
					<td>${material.descricao}</td>
					<td>${material.codigoInterno}</td>
					<td>${material.unidadeMedida.sigla}</td>
					<td>${material.quantidadeEstoque}</td>
					<td>${material.quantidadeMinima}</td>
					<td>${material.valorUnitario}</td>
					<td>${material.peso}</td>
					<td>${material.comprimento}</td>
					<td>${material.largura}</td>
					<td>${material.altura}</td>
					<td>${material.situacao}</td>
					<td><a href="<c:url value='/materiais/${material.id}'/>"><button>Editar</button></a></td>
			</c:forEach>
		</tbody>
	</table>
	<div id="mensagem">
		<strong>${mensagem}</strong>
	</div>
</body>
</html>