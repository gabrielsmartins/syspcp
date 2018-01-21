<!DOCTYPE html>
<html lang="pt-br">

<head>
<title>Material - Editar</title>
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
											<h4>Material - Editar</h4>
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

										<form action="<c:url value='/materiais/${material.id}'/>"
											method="POST" accept-charset="UTF-8">
											<div class="card-body z-depth-0">
												<div class="row">
													<div class="col-sm-12">
														<!-- Basic Form Inputs card start -->
														<div class="card">
															<div class="card-header">
																<h5>Dados Básicos</h5>
																<div class="card-header-right">
																	<i class="icofont icofont-rounded-down"></i> <i
																		class="icofont icofont-refresh"></i>
																</div>
															</div>
															<div class="card-block" style="">
																<h4 class="sub-title">Informações Básicas</h4>
																<div class="form-group row">
																	<label class="col-sm-2 col-form-label">Código
																		Interno:</label>
																	<div class="col-sm-6">
																		<input class="form-control"
																			placeholder="Código Interno" type="text"
																			name="material.codigoInterno" value="${material.codigoInterno}">
																	</div>
																</div>
																<div class="form-group row">
																	<label class="col-sm-2 col-form-label">Descricao:</label>
																	<div class="col-sm-10">
																		<input class="form-control" placeholder="Descrição"
																			type="text" name="material.descricao" value="${material.descricao}">
																	</div>
																</div>
																<div class="form-group row">
																	<label class="col-sm-2 col-form-label">Valor
																		Unitário</label>
																	<div class="col-sm-2">
																		<div class="input-group">
																			<span class="input-group-addon">R$</span> <input
																				class="form-control" placeholder="Valor Unitário"
																				type="number" pattern="[0-9]+([\.,][0-9]+)?"
																				step="0.01" name="material.valorUnitario" value="${material.valorUnitario}">
																		</div>
																	</div>

																	<label class="col-sm-2 col-form-label">Situação:</label>
																	<div class="col-md-6">
																		<div class="radio">
																			 <input name="material.situacao" type="radio" id="ATIVO"
												VALUE="ATIVO"
												<c:if test="${material.situacao == 'ATIVO'}">checked</c:if> /><label for="ATIVO">Ativo</label>
											                                       
											                                       <input name="material.situacao" type="radio" id="INATIVO"
												VALUE="INATIVO"
												<c:if test="${material.situacao == 'INATIVO'}">checked</c:if> />
											<label for="INATIVO">Inativo</label> 
											
											
											<input
												name="material.situacao" type="radio" id="FORA_DE_LINHA"
												VALUE="FORA_DE_LINHA"
												<c:if test="${material.situacao == 'FORA_DE_LINHA'}">checked</c:if> />
												
												<label for="INATIVO">Fora de Linha</label> 
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>



											<div class="card-body z-depth-0">
												<div class="row">
													<div class="col-sm-12">
														<!-- Basic Form Inputs card start -->
														<div class="card">
															<div class="card-header">
																<h5>Dados Técnicos</h5>
																<div class="card-header-right">
																	<i class="icofont icofont-rounded-down"></i> <i
																		class="icofont icofont-refresh"></i>
																</div>
															</div>
															<div class="card-block" style="">
																<h4 class="sub-title">Informações Técnicas</h4>


																<div class="form-group row">
																	<label class="col-sm-2 col-form-label">Peso
																		(KG):</label>
																	<div class="col-sm-2">
																		<input class="form-control" type="number"
																			pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
																			name="material.peso" value="${material.peso}">
																	</div>
																</div>

																<div class="form-group row">
																	<label class="col-sm-2 col-form-label">Unidade
																		de Medida:</label>
																	<div class="col-sm-6">
																		<select class="form-control"
																			name="material.unidadeMedida.id">
																			<c:forEach items="${unidades}" var="unidade">
																				<option value="${unidade.id}" <c:if test="${unidade.id == material.unidadeMedida.id}">selected</c:if>>${unidade.sigla}-${unidade.descricao}</option>
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
																			step="0.01" name="material.comprimento" value="${material.comprimento}">
																	</div>

																	<label class="col-sm-1 col-form-label">Largura
																		(mm):</label>
																	<div class="col-sm-2">
																		<input class="form-control" placeholder="Largura"
																			type="number" pattern="[0-9]+([\.,][0-9]+)?"
																			step="0.01" name="material.largura" value="${material.largura}">
																	</div>

																	<label class="col-sm-1 col-form-label">Altura
																		(mm):</label>
																	<div class="col-sm-2">
																		<input class="form-control" placeholder="Altura"
																			type="number" pattern="[0-9]+([\.,][0-9]+)?"
																			step="0.01" name="material.altura" value="${material.altura}">
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>


											<div class="card-body z-depth-0">
												<div class="row">
													<div class="col-sm-12">
														<!-- Basic Form Inputs card start -->
														<div class="card">
															<div class="card-header">
																<h5>Dados Estoque</h5>
																<div class="card-header-right">
																	<i class="icofont icofont-rounded-down"></i> <i
																		class="icofont icofont-refresh"></i>
																</div>
															</div>
															<div class="card-block" style="">
																<h4 class="sub-title">Informações Estoque</h4>

																<div class="form-group row">
																	<label class="col-sm-2 col-form-label">Quantidade
																		Estoque :</label>
																	<div class="col-sm-2">
																		<input class="form-control"
																			placeholder="Quantidade Estoque" type="number"
																			name="material.quantidadeEstoque" value="${material.quantidadeEstoque}">
																	</div>
																</div>

																<div class="form-group row">
																	<label class="col-sm-2 col-form-label">Quantidade
																		Mínima :</label>
																	<div class="col-sm-2">
																		<input class="form-control"
																			placeholder="Quantidade Mínima :" type="number"
																			name="material.quantidadeMinima" value="${material.quantidadeMinima}">
																	</div>
																</div>


																<div class="form-group row">
																	<label class="col-sm-2 col-form-label">Lead
																		Time (D) :</label>
																	<div class="col-sm-2">
																		<input class="form-control" placeholder="Lead Time"
																			type="number" name="material.leadTime" value="${material.leadTime}">
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>

											<div class="card-footer z-depth-0">
												<button class="btn btn-primary" type="submit" name="_method"
													value="PUT">Salvar</button>
												<button type="submit" class="btn btn-danger" name="_method"
													value="DELETE">Excluir</button>
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









