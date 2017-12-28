<!Doctype html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


<%@ include file="../common/import_css.jspf"%>

<title>Consultar - Operação</title>
</head>

<body
	class="app header-fixed sidebar-fixed aside-menu-fixed aside-menu-hidden">

	<%@ include file="../common/navbar.jspf"%>



	<div class="app-body">


		<%@ include file="../common/sidebar.jspf"%>



		<main class="main"> <!-- Breadcrumb -->
		<ol class="breadcrumb">
			<li class="breadcrumb-item">Home</li>
			<li class="breadcrumb-item"><a href="#">Operacao</a></li>
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
						<i class="fa fa-align-justify"></i> <strong>Operacao -
							Lista</strong>
					</div>
					<div class="card-body">
						<table
							class="table table-bordered table-striped table-sm table-hover">
							<thead>
								<tr>
									<th><strong>ID</strong></th>
									<th><strong>Descricao</strong></th>
									<th><strong>Setor</strong></th>
									<th><strong>Acao</strong></th>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${operacaoList}" var="operacao">
									<tr>
										<td>${operacao.id}</td>
										<td>${operacao.descricao}</td>
										<td>${operacao.setor.descricao}</td>
										<td><a href="<c:url value='/operacoes/${operacao.id}'/>"
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