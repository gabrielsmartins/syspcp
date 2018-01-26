<!DOCTYPE html>
<html lang="pt-br">

<head>
<title>Unidade de Medida - Novo</title>
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
								href="form-elements-bootstrap.html">Novo</a></li>
						</ol>
					</div>
				</div>


				<div class="card">
					<form action="<c:url value='/unidades/'/>" method="POST"
						accept-charset="UTF-8">
						<div class="card-header">
							<h5 class="card-header-text">Cadastro</h5>
						</div>


						<div class="card-body">
							<div class="row">
								<div class="col-sm-12">
									<div class="card-block">


										<div class="form-group row">
											<label class="col-sm-2 col-form-label">Descricao:</label>
											<div class="col-sm-6">
												<input class="form-control" placeholder="Descricao"
													type="text" name="unidade.descricao">
											</div>
										</div>

										<div class="form-group row">
											<label class="col-sm-2 col-form-label">Sigla:</label>
											<div class="col-sm-6">
												<input class="form-control" placeholder="Sigla" type="text"
													name="unidade.sigla">
											</div>
										</div>


									</div>

								</div>
							</div>
						</div>


						<div class="card-footer">
							<button class="btn btn-success waves-effect waves-light m-r-30"
								type="submit">Salvar</button>
							<button type="reset"
								class="btn btn-default waves-effect waves-light m-r-30">Cancelar</button>
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





