<%@ include file="../common/import_jstl.jspf" %> 
<!DOCTYPE HTML>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Lista - Material</title>
<%@ include file="../common/import_css.jspf"%>
</head>
<%@ include file="../common/header.jspf"%>>
</head>
<body>
<main>
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
	</main>
</body>
<%@ include file="../common/import_js.jspf"%>
</html>