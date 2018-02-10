<!DOCTYPE html>
<html lang="pt-br">

<head>
<title>Recurso - Editar</title>
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
						<h4>Recurso - Editar</h4>
						<ol class="breadcrumb breadcrumb-title breadcrumb-arrow">
							<li class="breadcrumb-item"><a href="index.html"><i
									class="icofont icofont-home"></i></a></li>
							<li class="breadcrumb-item"><a href="#">Recurso</a></li>
							<li class="breadcrumb-item"><a
								href="form-elements-bootstrap.html">Editar</a></li>
						</ol>
					</div>
				</div>
				<div class="card">
					<form action="<c:url value='/recursos/${recurso.id}'/>"
						method="POST" accept-charset="UTF-8">
						<div class="card-header">
							<h5 class="card-header-text">Editar</h5>
						</div>


						<div class="card-body">
							<div class="row">
								<div class="col-sm-12">
									<div class="card-block">


										<div class="form-group row">
											<label class="col-sm-2 col-form-label">Descricao:</label>
											<div class="col-sm-6">
												<input class="form-control" placeholder="Descricao"
													type="text" name="recurso.descricao"
													value="${recurso.descricao}">
											</div>
										</div>

										<div class="form-group row">
											<label class="col-sm-2 col-form-label">Setor:</label>
											<div class="col-sm-6">
												<select class="form-control" name="recurso.setor.id">
													<c:forEach items="${setores}" var="setor">
														<option value="${setor.id}"
															<c:if test="${setor.id == recurso.setor.id}">selected</c:if>>${setor.descricao}</option>
													</c:forEach>
												</select>
											</div>
										</div>




									</div>

								</div>
							</div>
						</div>


						<div class="card-footer">
							<button class="btn btn-success waves-effect waves-light m-r-30"
								type="submit" name="_method" value="PUT">Salvar</button>
							<button class="btn btn-danger waves-effect waves-light m-r-30"
								type="submit" name="_method" value="DELETE">Cancelar</button>
						</div>

					</form>
				</div>
			</div>
			<!-- Main content ends -->
			<!-- Container-fluid ends -->
		</div>
	</div>




	<%@ include file="../common/import_js.jspf"%>

</body>

</html>





















