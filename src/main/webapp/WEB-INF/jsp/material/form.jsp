<!DOCTYPE html>
<html lang="pt-br">

<head>
<title>Material - Novo</title>
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
						<h4>Material - Novo</h4>
						<ol class="breadcrumb breadcrumb-title breadcrumb-arrow">
							<li class="breadcrumb-item"><a href="index.html"><i
									class="icofont icofont-home"></i></a></li>
							<li class="breadcrumb-item"><a href="#">Material</a></li>
							<li class="breadcrumb-item"><a
								href="form-elements-bootstrap.html">Novo</a></li>
						</ol>
					</div>
				</div>
				<div class="card">
					<form action="<c:url value='/materiais/'/>" method="POST"
						accept-charset="UTF-8">
						<div class="card-header">
							<h5 class="card-header-text">Cadastro</h5>
						</div>


						<div class="card-body">
							<div class="row">
								<div class="col-sm-12">
									<div class="card-body">

										<div class="card-header">
											<h4 class="sub-title">Informações Básicas</h4>
										</div>
										<div class="card-block">

											<div class="form-group row">
												<label class="col-sm-2 col-form-label">Código
													Interno:</label>
												<div class="col-sm-6">
													<input class="form-control" placeholder="Código Interno"
														type="text" name="material.codigoInterno">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-2 col-form-label">Descricao:</label>
												<div class="col-sm-10">
													<input class="form-control" placeholder="Descrição"
														type="text" name="material.descricao">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-2 col-form-label">Valor
													Unitário</label>
												<div class="col-sm-2">
													<div class="input-group">
														<span class="input-group-addon">R$</span> <input
															class="form-control" placeholder="Valor Unitário"
															type="number" pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
															name="material.valorUnitario">
													</div>
												</div>

												<label class="col-sm-2 col-form-label">Situação:</label>
												<div class="col-md-6">
													<div class="radio">
														<input name="material.situacao" type="radio" id="ATIVO"
															value="ATIVO" checked> <label for="ATIVO">Ativo</label>
														<input name="material.situacao" type="radio" id="INATIVO"
															VALUE="INATIVO"> <label for="INATIVO">Inativo</label>
														<input name="material.situacao" type="radio"
															id="FORA_DE_LINHA" VALUE="FORA_DE_LINHA"> <label
															for="FORA_DE_LINHA">Fora de Linha</label>
													</div>

												</div>
											</div>
										</div>





										<div class="card-body">
											<div class="row">
												<div class="col-sm-12">
													<div class="card">
														<div class="card-header">
															<h4 class="sub-title">Informações Técnicas</h4>
														</div>
														<div class="card-block">



															<div class="form-group row">
																<label class="col-sm-2 col-form-label">Peso
																	(KG):</label>
																<div class="col-sm-2">
																	<input class="form-control" type="number"
																		pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
																		name="material.peso">
																</div>
															</div>

															<div class="form-group row">
																<label class="col-sm-2 col-form-label">Unidade
																	de Medida:</label>
																<div class="col-sm-6">
																	<select class="form-control"
																		name="material.unidadeMedida.id">
																		<c:forEach items="${unidades}" var="unidade">
																			<option value="${unidade.id}">${unidade.sigla}-${unidade.descricao}</option>
																		</c:forEach>
																	</select>
																</div>
															</div>

															<div class="form-group row">
																<label class="col-sm-2 col-form-label">Comprimento
																	(mm):</label>
																<div class="col-sm-2">
																	<input class="form-control" placeholder="Comprimento"
																		type="number" pattern="[0-9]+([\.,][0-9]+)?"
																		step="0.01" name="material.comprimento">
																</div>

																<label class="col-sm-1 col-form-label">Largura
																	(mm):</label>
																<div class="col-sm-2">
																	<input class="form-control" placeholder="Largura"
																		type="number" pattern="[0-9]+([\.,][0-9]+)?"
																		step="0.01" name="material.largura">
																</div>

																<label class="col-sm-1 col-form-label">Altura
																	(mm):</label>
																<div class="col-sm-2">
																	<input class="form-control" placeholder="Altura"
																		type="number" pattern="[0-9]+([\.,][0-9]+)?"
																		step="0.01" name="material.altura">
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>







										<div class="card-body">
											<div class="row">
												<div class="col-sm-12">
													<!-- Basic Form Inputs card start -->
													<div class="card">
														<div class="card-header">
															<h4 class="sub-title">Informações Estoque</h4>
														</div>
														<div class="card-block" style="">


															<div class="form-group row">
																<label class="col-sm-2 col-form-label">Quantidade
																	Estoque :</label>
																<div class="col-sm-2">
																	<input class="form-control"
																		placeholder="Quantidade Estoque" type="number"
																		name="material.quantidadeEstoque">
																</div>
															</div>

															<div class="form-group row">
																<label class="col-sm-2 col-form-label">Quantidade
																	Mínima :</label>
																<div class="col-sm-2">
																	<input class="form-control"
																		placeholder="Quantidade Mínima :" type="number"
																		name="material.quantidadeMinima">
																</div>
															</div>


															<div class="form-group row">
																<label class="col-sm-2 col-form-label">Lead Time
																	(D) :</label>
																<div class="col-sm-2">
																	<input class="form-control" placeholder="Lead Time"
																		type="number" name="material.leadTime">
																</div>
															</div>
														</div>
													</div>
												</div>
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


































