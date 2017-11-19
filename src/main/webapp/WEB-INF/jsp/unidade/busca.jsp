<%@ include file="../common/import_jstl.jspf" %> 
<!DOCTYPE HTML>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Unidade - ${unidadeMedida.sigla}</title>
<%@ include file="../common/import_css.jspf"%>
</head>
<%@ include file="../common/header.jspf"%>
<body>
<main>
	<form action="<c:url value='/unidades/${unidadeMedida.id}'/>"
		method="POST">
		<input type="text" name="unidade.descricao"
			value="${unidadeMedida.descricao}"> <input type="text" name="unidade.sigla" value="${unidadeMedida.sigla}">
		<button type="submit" name="_method" value="PUT">Salvar</button>
		<button type="submit" name="_method" value="DELETE">Excluir</button>
	</form>
</main>
</body>
<%@ include file="../common/import_js.jspf"%>
</html>