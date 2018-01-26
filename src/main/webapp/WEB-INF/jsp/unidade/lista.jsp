<!DOCTYPE html>
<html lang="pt-br">

<head>
<title>Unidade de Medida - Lista</title>
<%@ include file="../common/import_css.jspf"%>
</head>

<body class="sidebar-mini fixed">
	<div class="loader-bg">
		<div class="loader-bar"></div>
	</div>
	<div class="wrapper">
		<!-- Navbar-->
		<%@ include file="../common/navbar.jspf"%>
		<!-- Side-Nav-->
		<%@ include file="../common/sidebar.jspf"%>
		<div class="content-wrapper">
			<!-- Container-fluid starts -->
			<!-- Main content starts -->
			<div class="container-fluid">
				<div class="row">
					<div class="main-header">
						<h4>Unidade de Medida - Novo</h4>
						<ol class="breadcrumb breadcrumb-title breadcrumb-arrow">
							<li class="breadcrumb-item"><a href="index.html"><i
									class="icofont icofont-home"></i></a></li>
							<li class="breadcrumb-item"><a href="#">Unidade de
									Medida</a></li>
							<li class="breadcrumb-item"><a
								href="form-elements-bootstrap.html">Lista</a></li>
						</ol>
					</div>
				</div>
				<div class="card">
					<div class="card-header">
						<h5 class="card-header-text">Consulta</h5>
					</div>



					<div class="card-block">
						<div class="row">
							<div class="col-sm-12 table-responsive">
							<c:if test="${not empty mensagem}">
											<div class="alert alert-success" role="alert">${mensagem}</div>
										</c:if>
								<table class="table table-hover">
									<thead>
										<tr>
											<th><strong>ID</strong></th>
											<th><strong>Descricao</strong></th>
											<th><strong>Sigla</strong></th>
											<th><strong>Acao</strong></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${unidadeMedidaList}" var="unidade">
											<tr>
												<td>${unidade.id}</td>
												<td>${unidade.descricao}</td>
												<td>${unidade.sigla}</td>
												<td><a href="<c:url value='/unidades/${unidade.id}'/>"
													class="btn-floating btn-sm red accent-4"> <i
														class="material-icons md-dark pmd-sm">edit</i>
												</a> <a href="<c:url value='/unidades/${unidade.id}'/>" data-method="delete"
													class="btn-floating btn-sm red accent-4"> <i
														class="material-icons md-dark pmd-sm">delete</i>
												</a></td>
											</tr>

										</c:forEach>

									</tbody>
								</table>
							</div>
						</div>
					</div>




				</div>
			</div>
			<!-- Main content ends -->
			<!-- Container-fluid ends -->
		</div>
	</div>




	<%@ include file="../common/import_js.jspf"%>

</body>

</html>






