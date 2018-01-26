<!DOCTYPE html>
<html lang="pt-br">

<head>
<title>Setor - Lista</title>
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
						<h4>Setor - Novo</h4>
						<ol class="breadcrumb breadcrumb-title breadcrumb-arrow">
							<li class="breadcrumb-item"><a href="index.html"><i
									class="icofont icofont-home"></i></a></li>
							<li class="breadcrumb-item"><a href="#">Setor</a></li>
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
									<th><strong>Acao</strong></th>
								</tr>
							</thead>
									<tbody>
								<c:forEach items="${setorList}" var="setor">
									<tr>
										<td>${setor.id}</td>
										<td>${setor.descricao}</td>
										<td><a href="<c:url value='/setores/${setor.id}'/>"
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






