<!DOCTYPE HTML>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Lista - Unidade Medida</title>
<%@ include file="../common/import_css.jspf"%>
</head>
<body>
	<main> <%@ include file="../common/sidebar.jspf"%>
	<%@ include file="../common/navbar.jspf"%>

	<div class="container">
		<form class="col s12">
			<div class="row">
				<div class="input-field col s6">
					<i class="material-icons">search</i> <input
						name="unidade.descricao" type="text" class="validate" />
				</div>
			</div>
		</form>


		<c:if test="${mensagem}">
			<div class="row">
				<div class="white-text card-panel green darken-1">
					<p>
						<strong>${mensagem}</strong>
					</p>
				</div>
			</div>
		</c:if>
	</div>



	<table class="responsive-table striped highlight">
		<thead>
			<tr>
				<th>ID</th>
				<th>Descrição</th>
				<th>Sigla</th>
				<th>Ação</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${unidadeMedidaList}" var="unidade">
				<tr>
					<td>${unidade.id}</td>
					<td>${unidade.descricao}</td>
					<td>${unidade.sigla}</td>
					<td><a href="<c:url value='/unidades/${unidade.id}'/>"><button
								class="btn yellow darken-3 waves-effect waves-light">
								<i class="large material-icons prefix">create</i> Editar
							</button></a></td>
				</tr>

			</c:forEach>

		</tbody>

	</table>


	</main>
</body>
<%@ include file="../common/import_js.jspf"%>
</html>