<!Doctype html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


<%@ include file="../common/import_css.jspf"%>

<title>Consultar - Material</title>
</head>

<body
	class="app header-fixed sidebar-fixed aside-menu-fixed aside-menu-hidden">

	<%@ include file="../common/navbar.jspf"%>



	<div class="app-body">


		<%@ include file="../common/sidebar.jspf"%>



		<main class="main"> <!-- Breadcrumb -->
		<ol class="breadcrumb">
			<li class="breadcrumb-item">Home</li>
			<li class="breadcrumb-item"><a href="#">Material</a></li>
			<li class="breadcrumb-item active">Consultar</li>

			<!-- Breadcrumb Menu-->
			<li class="breadcrumb-menu d-md-down-none">
				<div class="btn-group" role="group" aria-label="Button group">
					<a class="btn" href="#"><i class="icon-speech"></i></a> <a
						class="btn" href="./"><i class="icon-graph"></i>
						&nbsp;Dashboard</a> <a class="btn" href="#"><i
						class="icon-settings"></i> &nbsp;Settings</a>
				</div>
			</li>
		</ol>

		<div class="container-fluid">

			<div class="animated fadeIn">



				<!-- Start Message -->
				<c:if test="${not empty mensagem}">
					<div class="alert alert-success" role="alert">${mensagem}</div>
				</c:if>

				<div class="card">
					<div class="card-header">
						<i class="fa fa-align-justify"></i> <strong>Material -
							Lista</strong>
					</div>
					<div class="card-body">
						<table
							class="table table-bordered table-striped table-sm table-hover">
							<thead>
								<tr>
									<th>ID</th>
									<th>Descricao</th>
									<th>Codigo Interno</th>
									<th>Unidade</th>
									<th>Quantidade Estoque</th>
									<th>Quantidade Mínima</th>
									<th>Valor Unit (R$)</th>
									<th>Peso (KG)</th>
									<th>Comprimento (mm)</th>
									<th>Largura (mm)</th>
									<th>Altura (mm)</th>
									<th>Situação</th>
									<th>Acao</th>
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
										<td>${fn:replace(material.situacao, '_', ' ')}</td>
										<td><a href="<c:url value='/materiais/${material.id}'/>"
											class="btn-floating btn-sm red accent-4"> <i
												class="material-icons md-dark pmd-sm">edit</i>
										</a> <a href="javascript:void(0);"
											class="btn-floating btn-sm red accent-4"> <i
												class="material-icons md-dark pmd-sm">delete</i>
										</a></td>
									</tr>

								</c:forEach>

							</tbody>

						</table>
						<nav>
							<ul class="pagination">
								<li class="page-item"><a class="page-link" href="#">Prev</a></li>
								<li class="page-item active"><a class="page-link" href="#">1</a>
								</li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">4</a></li>
								<li class="page-item"><a class="page-link" href="#">Next</a></li>
							</ul>
						</nav>
					</div>
				</div>



				<!--/.row-->
			</div>



		</div>
		<!-- /.conainer-fluid --> </main>



		<%@ include file="../common/sidebar_right.jspf"%>
	</div>


	<%@ include file="../common/footer.jspf"%>
	<%@ include file="../common/import_js.jspf"%>
</html>