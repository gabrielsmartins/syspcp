<!DOCTYPE html>
<html lang="pt-br">

<head>
<title>Material - Lista</title>
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
											<h4>Material - Lista</h4>
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

										<!-- Start Message -->
										<c:if test="${not empty mensagem}">
											<div class="alert alert-success" role="alert">${mensagem}</div>
										</c:if>

										<div class="card">
											<div class="card-header">
												<i class="fa fa-align-justify"></i> <strong>Material
													- Lista</strong>
											</div>
											<div class="card-body">

												<div class="col-sm-12">
													<table
														class="table table-bordered table-striped table-sm table-hover table-responsive">
														<thead>
															<tr>
																<th><strong>ID</strong></th>
																<th><strong>Descricao</strong></th>
																<th><strong>Codigo Interno</strong></th>
																<th><strong>Unidade</strong></th>
																<th><strong>Qntd Estoque</strong></th>
																<th><strong>Qntd Mínima</strong></th>
																<th><strong>Valor Unit (R$)</strong></th>
																<th><strong>Peso (KG)</strong></th>
																<th><strong>Comp (mm)</strong></th>
																<th><strong>Larg (mm)</strong></th>
																<th><strong>Alt (mm)</strong></th>
																<th><strong>Status</strong></th>
																<th><strong>Acao</strong></th>
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

																	<c:set var="status" scope="session" value="${fn:replace(material.situacao, '_', ' ')}" />
																	<c:choose>

																		<c:when test="${status == 'ATIVO'}">
																			<td><span class="bagde badge-success">${status}</span></td>
																		</c:when>

																		<c:when test="${status == 'INATIVO'}">
																			<td><span class="bagde badge-danger">${status}</span></td>
																		</c:when>

																		<c:otherwise>
																			<td><span class="bagde badge-warning">${status}</span></td>
																		</c:otherwise>
																	</c:choose>



																	<td><a
																		href="<c:url value='/materiais/${material.id}'/>"
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
															<li class="page-item active"><a class="page-link"
																href="#">1</a></li>
															<li class="page-item"><a class="page-link" href="#">2</a></li>
															<li class="page-item"><a class="page-link" href="#">3</a></li>
															<li class="page-item"><a class="page-link" href="#">4</a></li>
															<li class="page-item"><a class="page-link" href="#">Next</a></li>
														</ul>
													</nav>
												</div>
											</div>
										</div>


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
