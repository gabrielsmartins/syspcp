<!DOCTYPE HTML>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


<%@ include file="../common/import_css.jspf"%>


<title>Material - Editar</title>
</head>


<body>
	<!-- Header Starts -->
	<!--Start Nav bar -->
	<%@ include file="../common/navbar.jspf"%>
	<!--End Nav bar -->
	<!-- Header Ends -->
	<%@ include file="../common/sidebar.jspf"%>

	<!--content area start-->
	<div id="content" class="pmd-content content-area dashboard">

		<div class="container-fluid">


			<!-- Start Form  -->
			<div class="section section-custom billinfo">
				<!--section-title -->
				<h2>Editar Material</h2>
				<!--section-title end -->

				<!--breadcrum start-->
				<ol class="breadcrumb text-left">
					<li><a href="<c:url value='/materiais/'/>">Materiais</a></li>
					<li class="active">Editar</li>
				</ol>
				<!--breadcrum end-->



				<div class="pmd-card pmd-z-depth pmd-card">
					<div class="pmd-card-body">
						<form action="<c:url value='/materiais/${material.id}'/>" method="POST"
							accept-charset="UTF-8">

							<!-- Dados Básicos -->
							<fieldset>
								<legend>Dados Básicos</legend>

								<div
									class="form-group pmd-textfield pmd-textfield-floating-label">
									<label for="regular1" class="control-label">Código
										Interno:</label> <input name="material.codigoInterno" id="regular1"
										class="form-control" type="text" value="${material.codigoInterno}"><span
										class="pmd-textfield-focused"></span>
								</div>

								<div
									class="form-group pmd-textfield pmd-textfield-floating-label">
									<label for="regular1" class="control-label">Descrição:</label>
									<input name="material.descricao" id="regular1"
										class="form-control" type="text" value="${material.descricao}"><span
										class="pmd-textfield-focused"></span>
								</div>


								<div class="group-fields clearfix row">
									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
										<div
											class="form-group pmd-textfield pmd-textfield-floating-label">
											<label for="valor unitario">Valor Unitário:</label> <input
												type="text" name="material.valorUnitario"
												class="form-control" value="${material.valorUnitario}"/><span class="pmd-textfield-focused"></span>
										</div>
									</div>


									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
										<div
											class="form-group pmd-textfield pmd-textfield-floating-label">
											<label for="valor unitario">Lead Time:</label> <input
												type="text" name="material.leadTime" class="form-control" value="${material.leadTime}" />
											<span class="pmd-textfield-focused"></span>
										</div>
									</div>
								</div>


								<div class="group-fields clearfix row">
									<div
										class="form-group pmd-textfield pmd-textfield-floating-label">
										<label for="situacao" class="control-label">Situação:</label>
										<!-- Inline radio -->
										<label class="radio-inline pmd-radio"> <input
											type="radio" id="ativo" name="material.situacao"
											value="ATIVO" <c:if test="${material.situacao == 'ATIVO'}">checked</c:if> /> <span for="ativo">Ativo</span>
										</label> <label class="radio-inline pmd-radio"> <input
											type="radio" id="inativo" name="material.situacao"
											value="INATIVO" <c:if test="${material.situacao == 'INATIVO'}">checked</c:if> />  <span for="inativo">Inativo</span>
										</label> <label class="radio-inline pmd-radio"> <input
											type="radio" id="fora_de_linha" name="material.situacao"
											value="FORA_DE_LINHA" <c:if test="${material.situacao == 'FORA_DE_LINHA'}">checked</c:if> /><span for="fora_de_linha">Fora
												de Linha</span>
										</label>
									</div>
								</div>

							</fieldset>



                        <br>

							<!-- Dados Técnicos -->

							<fieldset>
								<legend>Dados Técnicos</legend>

								<div class="group-fields clearfix row">
									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
										<div
											class="form-group pmd-textfield pmd-textfield-floating-label">
											<label for="valor unitario">Peso (KG):</label> <input
												type="text" name="material.peso" class="form-control" value="${material.peso}"/><span
												class="pmd-textfield-focused"></span>
										</div>
									</div>


									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">

										<div
											class="form-group pmd-textfield">
											<label>Unidade de Medida</label> <select
												name="material.unidadeMedida.id"
												class="select-simple form-control pmd-select2 select2-hidden-accessible" tabindex="-1" aria-hidden="true">
												<c:forEach items="${unidades}" var="unidade">
													<option value="${unidade.id}" <c:if test="${unidade.id == material.unidadeMedida.id}">selected</c:if>>${unidade.sigla}-${unidade.descricao}</option>
												</c:forEach>
											</select><span
												class="select2 select2-container select2-container--bootstrap select2-container--below"
												dir="ltr" style="width: 236px;"><span
												class="selection"><span
													class="select2-selection select2-selection--single"
													role="combobox" aria-haspopup="true" aria-expanded="false"
													tabindex="0" aria-labelledby="select2-4dir-container"><span
														class="select2-selection__rendered"
														id="select2-4dir-container" title=""></span><span
														class="select2-selection__arrow" role="presentation"><b
															role="presentation"></b></span></span></span><span class="dropdown-wrapper"
												aria-hidden="true"></span></span><span
												class="pmd-textfield-focused"></span>
										</div>


									</div>
								</div>


								<div class="group-fields clearfix row">
									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
										<div
											class="form-group pmd-textfield pmd-textfield-floating-label">
											<label for="valor unitario">Comprimento (mm):</label> <input
												type="text" name="material.comprimento" class="form-control" value="${material.comprimento}"/>
											<span class="pmd-textfield-focused"></span>
										</div>
									</div>


									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
										<div
											class="form-group pmd-textfield pmd-textfield-floating-label">
											<label for="valor unitario">Largura (mm):</label> <input
												type="text" name="material.largura" class="form-control" value="${material.largura}"/>
											<span class="pmd-textfield-focused"></span>
										</div>
									</div>


									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
										<div
											class="form-group pmd-textfield pmd-textfield-floating-label">
											<label for="valor unitario">Altura (mm):</label> <input
												type="text" name="material.altura" class="form-control" value="${material.altura}"/>
											<span class="pmd-textfield-focused"></span>
										</div>
									</div>
								</div>
							</fieldset>


							<!-- Dados Estoque -->
							<fieldset>
								<legend>Dados Estoque</legend>
								<div class="group-fields clearfix row">
									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
										<div
											class="form-group pmd-textfield pmd-textfield-floating-label">

											<label for="valor unitario">Quantidade Estoque:</label> <input
												type="text" name="material.quantidadeEstoque"  value="${material.quantidadeEstoque}"
												class="form-control" />
										</div>
									</div>



									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
										<div
											class="form-group pmd-textfield pmd-textfield-floating-label">
											<label for="valor unitario">Quantidade Mínima:</label> <input
												type="text" name="material.quantidadeMinima" value="${material.quantidadeMinima}"
												class="form-control" />
										</div>
									</div>
								</div>
							</fieldset>
							<div class="pmd-card-actions">
								<button class="btn btn-red next" type="submit" name="_method" value="PUT">Salvar</button>
								<button type="reset" class="btn btn-gray" name="_method" value="DELETE">Excluir</button>
							</div>
						</form>
					</div>
					<!-- End Form  -->
				</div>
			</div>

		</div>


	</div>
	<!--end content area-->
</body>

<!-- Footer Starts -->
<!--footer start-->
<%@ include file="../common/footer.jspf"%>
<!-- Footer Ends -->

<!-- Scripts Starts -->
<%@ include file="../common/import_js.jspf"%>
</html>