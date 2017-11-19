<%@ include file="../common/import_jstl.jspf" %> 
<!DOCTYPE HTML>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Cadastro - Material</title>
<%@ include file="../common/import_css.jspf"%>
</head>
<%@ include file="../common/header.jspf"%>
<body>
<main>
	<form action="<c:url value='/materiais/'/>" method="POST">
		<label>Descrição:</label> <input type="text" name="material.descricao" /><br />
		<label>Código Interno:</label> <input type="text" name="material.codigoInterno" /><br />
		<label>Situação:</label> 
		<input type="radio" name="material.situacao" value="ATIVO"/>Ativo
		<input type="radio" name="material.situacao" value="INATIVO"/>Inativo
		<input type="radio" name="material.situacao" value="FORA_DE_LINHA"/>Fora de Linha<br/>
		<label>Unidade Medida:</label> 
		<select name="material.unidadeMedida.id">
			<c:forEach items="${unidades}" var="unidade">
				<option value="${unidade.id}">${unidade.sigla}-${unidade.descricao}</option>
			</c:forEach>
		</select><br/>
		<label>Valor Unitário:</label> <input type="text" name="material.valorUnitario" />
		<label>Lead time:</label> <input type="text" name="material.leadTime" /><br />
		<label>Quantidade Estoque:</label> <input type="text"
			name="material.quantidadeEstoque" /> <label>Quantidade
			Mínima:</label> <input type="text" name="material.quantidadeMinima" /><br />
		<label>Peso (KG):</label> <input type="text" name="material.peso" /><br />
		<label>Comprimento (mm):</label> <input type="text" name="material.comprimento" /> 
		<label>Largura (mm):</label> <input type="text" name="material.largura" /> 
		<label>Altura (mm):</label> <input type="text" name="material.altura" /><br />
		<button type="submit">Salvar</button>
	</form>
	</main>
</body>
<%@ include file="../common/import_js.jspf"%>
</html>