<%@ include file="../common/import_jstl.jspf"%>
<!DOCTYPE HTML>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Cadastro - Unidade Medida</title>
<%@ include file="../common/import_css.jspf"%>
</head>
<body>
	<main>
	<br><bR>
	<br><bR>
	<div class="container">
		<form action="<c:url value='/unidades/'/>" method="POST">
			<p class="h5 text-center mb-4">Cadastro de Unidade</p>
			<div class="md-form">
				<i class="fa fa-envelope prefix grey-text"></i> <input type="text"
					class="form-control" name="unidade.descricao" /> <label
					class="has-float-label" for="defaultForm-email">Descrição</label>
			</div>

			<div class="md-form">
				<i class="fa fa-lock prefix grey-text"></i> <input type="text"
					name="unidade.sigla" class="form-control" /> <label
					class="has-float-label" for="defaultForm-pass">Sigla</label>
			</div>
			<div class="text-center">
				<button type="submit" class="btn btn-dark-green">Salvar</button>
			</div>
		</form>
	</div>
	</main>
</body>
<%@ include file="../common/import_js.jspf"%>
</html>