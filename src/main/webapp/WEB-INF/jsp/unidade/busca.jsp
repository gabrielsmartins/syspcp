<!DOCTYPE HTML>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Unidade - ${unidadeMedida.sigla}</title>
<%@ include file="../common/import_css.jspf"%>
</head>
<body>
	<main> 
	<%@ include file="../common/sidebar.jspf"%>
	<%@ include file="../common/navbar.jspf"%>
	<div class="container">
		<h2 class="bold">Editar Unidade Medida</h2>
		<form action="<c:url value='/unidades/${unidadeMedida.id}'/>" method="POST" class="col s12">

			<div class="row">
				<div class="input-field col s6">
					<input type="text" name="unidade.descricao"
						value="${unidadeMedida.descricao}" class="validate">
				</div>
			</div>

			<div class="row">
				<div class="input-field col s6">
					<input type="text" name="unidade.sigla"
						value="${unidadeMedida.sigla}" class="validate">

				</div>
			</div>

			<button type="submit" class="btn yellow darken-3 waves-effect waves-light" name="_method" value="PUT">
				<i class="large material-icons prefix">save</i>Salvar
			</button>
			<button type="submit" class="btn yellow darken-3 waves-effect waves-light" name="_method" value="DELETE">Excluir</button>
		</form>
	</div>
	</main>
</body>
<%@ include file="../common/import_js.jspf"%>
</html>