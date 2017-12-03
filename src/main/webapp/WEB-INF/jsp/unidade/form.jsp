<!DOCTYPE HTML>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Nova Unidade Medida</title>
<%@ include file="../common/import_css.jspf"%>
</head>
<body>
	<main> <%@ include file="../common/sidebar.jspf"%>
	<%@ include file="../common/navbar.jspf"%>

	<div class="container">
	<h2 class="bold">Novo Unidade Medida</h2>
		<div class="row">
			<form action="<c:url value='/unidades/'/>" method="POST"
				class="col s12">
				<div class="row">
					<div class="input-field col s6">
						<input type="text" name="unidade.descricao" class="validate" /> <label
							for="descricao">Descrição</label>
					</div>
				</div>

				<div class="row">
					<div class="input-field col s6">
						<input type="text" name="unidade.sigla" class="validate" /> <label
							for="sigla">Sigla</label>
					</div>
				</div>

				<div class="row">
					<button type="submit" class="btn yellow darken-3 waves-effect waves-light"><i class="large material-icons prefix">save</i>Salvar</button>
				</div>
			</form>
		</div>
	</div>
	</main>
</body>
<%@ include file="../common/import_js.jspf"%>
</html>