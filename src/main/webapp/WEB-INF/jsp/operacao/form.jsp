<!DOCTYPE html>
<html lang="pt-br">

<head>
<title>Operacao - Novo</title>
<%@ include file="../common/import_css.jspf"%>
</head>

<body>
	<!-- Pre-loader start -->
	<div class="theme-loader">
		<div class="ball-scale">
			<div></div>
		</div>
	</div>
	<!-- Pre-loader end -->

	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">

			<%@ include file="../common/navbar.jspf"%>
			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">

					<%@ include file="../common/sidebar.jspf"%>

					<div class="pcoded-content">

						<div class="pcoded-inner-content">

							<div class="main-body">
								<div class="page-wrapper">
									<div class="page-header">
										<div class="page-header-title">
											<h4>Operacao - Novo</h4>
										</div>
										<div class="page-header-breadcrumb">
											<ul class="breadcrumb-title">
												<li class="breadcrumb-item"><a href="#!"> <i
														class="icofont icofont-home"></i>
												</a></li>
												<li class="breadcrumb-item"><a href="#!">Dashboard</a>
												</li>
											</ul>
										</div>
									</div>
									<div class="page-body">

										<form action="<c:url value='/operacoes/'/>" method="POST"
											accept-charset="UTF-8">
											<div class="card-body z-depth-0">
												<div class="row">
													<div class="col-sm-12">
														<!-- Basic Form Inputs card start -->
														<div class="card">
															<div class="card-header">
																<h5>Dados Basicos</h5>
																<div class="card-header-right">
																	<i class="icofont icofont-rounded-down"></i> <i
																		class="icofont icofont-refresh"></i>
																</div>
															</div>
															<div class="card-block" style="">
																<h4 class="sub-title">Informacoes Basicas</h4>

																<div class="form-group row">
																	<label class="col-sm-2 col-form-label">Descricao:</label>
																	<div class="col-sm-6">
																		<input class="form-control" placeholder="Descricao"
																			type="text" name="operacao.descricao">
																	</div>
																</div>


																<div class="form-group row">
																	<label class="col-sm-2 col-form-label">Descricao:</label>
																	<div class="col-sm-6">
																		<textarea id="instrucao" class="form-control"
																			name="operacao.instrucao"></textarea>
																	</div>
																</div>


																<div class="form-group row">
																	<label class="col-sm-2 col-form-label">Setor:</label>
																	<div class="col-sm-6">
																		<select class="form-control" name="operacao.setor.id">
																			<c:forEach items="${setores}" var="setor">
																				<option value="${setor.id}">${setor.descricao}</option>
																			</c:forEach>
																		</select>
																	</div>
																</div>

															</div>
														</div>
													</div>
												</div>
											</div>


											<div class="card-footer z-depth-0">
												<button class="btn btn-primary" type="submit">Salvar</button>
												<button type="reset" class="btn btn-default">Cancelar</button>
											</div>

										</form>

									</div>
								</div>
							</div>
							<!--<div id="styleSelector">-->

							<!--</div>-->
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>




	<%@ include file="../common/import_js.jspf"%>


</body>

</html>














