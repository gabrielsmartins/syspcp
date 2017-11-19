<%@ include file="../common/import_jstl.jspf"%>
<!DOCTYPE HTML>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Material -${material.codigoInterno}</title>
<%@ include file="../common/import_css.jspf"%>
</head>
<%@ include file="../common/header.jspf"%>
<body>
<main>
	<form action="<c:url value='/materiais/${material.id}'/>" method="POST">
		<label>Descrição:</label> <input type="text" name="material.descricao"
			value="${material.descricao}" /><br /> <label>Código
			Interno:</label> <input type="text" name="material.codigoInterno"
			value="${material.codigoInterno}" /><br /> <label>Situação:</label>
		<input type="radio" name="material.situacao" value="ATIVO"
			<c:if test="${material.situacao == 'ATIVO'}">checked</c:if> />Ativo
		<input type="radio" name="material.situacao" value="INATIVO"
			<c:if test="${material.situacao == 'INATIVO'}">checked</c:if> />Inativo
		<input type="radio" name="material.situacao" value="FORA_DE_LINHA"
			<c:if test="${material.situacao == 'FORA_DE_LINHA'}">checked</c:if> />Fora
		de Linha<br /> <label>Unidade Medida:</label> <select
			name="material.unidadeMedida.id">
			<c:forEach items="${unidades}" var="unidade">
				<option value="${unidade.id}"
					<c:if test="${unidade.id == material.unidadeMedida.id}">selected</c:if>>${unidade.sigla}-${unidade.descricao}</option>
			</c:forEach>
		</select><br /> <label>Valor Unitário:</label> <input type="text"
			name="material.valorUnitario" value="${material.valorUnitario}" /> <label>Lead
			time:</label> <input type="text" name="material.leadTime"
			value="${material.leadTime}" /><br /> <label>Quantidade
			Estoque:</label> <input type="text" name="material.quantidadeEstoque"
			value="${material.quantidadeEstoque}" /> <label>Quantidade
			Mínima:</label> <input type="text" name="material.quantidadeMinima"
			value="${material.quantidadeMinima}" /><br /> <label>Peso
			(KG):</label> <input type="text" name="material.peso"
			value="${material.peso}" /><br /> <label>Comprimento (mm):</label>
		<input type="text" name="material.comprimento"
			value="${material.comprimento}" /> <label>Largura (mm):</label> <input
			type="text" name="material.largura" value="${material.largura}" /> <label>Altura
			(mm):</label> <input type="text" name="material.altura"
			value="${material.altura}" /><br />
		<button type="submit" name="_method" value="PUT">Salvar</button>
		<button type="submit" name="_method" value="DELETE">Excluir</button>
	</form>
	</main>
</body>
<%@ include file="../common/import_js.jspf"%>
</html>