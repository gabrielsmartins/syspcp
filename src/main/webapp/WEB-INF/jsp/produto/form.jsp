<!DOCTYPE html>
<html lang="pt-br">

<head>
<title>Produto - Novo</title>
<%@ include file="../common/import_css.jspf"%>

    <script>
        $(document).ready(function() { $("#e1").select2(); });
    </script>
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
						<h4>Produto - Novo</h4>
						<ol class="breadcrumb breadcrumb-title breadcrumb-arrow">
							<li class="breadcrumb-item"><a href="index.html"><i
									class="icofont icofont-home"></i></a></li>
							<li class="breadcrumb-item"><a href="#">Produto</a></li>
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


						<!--  Tabs  -->
						<ul class="nav nav-tabs md-tabs" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="tab" href="#dados_basicos" role="tab">Dados
									Basicos</a>
								<div class="slide"></div></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#estrutura" role="tab">Estrutura</a>
								<div class="slide"></div></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#roteiro" role="tab">Roteiro</a>
								<div class="slide"></div></li>
						</ul>
						<!--  End Tabs  -->




						<!--  Start Content Tabs -->
						<div class="tab-content">
							<div class="tab-pane active" id="dados_basicos" role="tabpanel">


								<!-- Início Aba Dados Básicos -->
								<div class="card-body">
									<div class="row">
										<div class="col-sm-12">
											<div class="card-body">

												<div class="card-header">
													<h4 class="sub-title">Informacoes Basicas</h4>
												</div>
												<div class="card-block">

													<div class="form-group row">
														<label class="col-sm-2 col-form-label">Codigo
															Interno:</label>
														<div class="col-sm-6">
															<input class="form-control" placeholder="Codigo Interno"
																type="text" name="material.codigoInterno">
														</div>
													</div>
													<div class="form-group row">
														<label class="col-sm-2 col-form-label">Descricao:</label>
														<div class="col-sm-10">
															<input class="form-control" placeholder="Descricao"
																type="text" name="material.descricao">
														</div>
													</div>
													<div class="form-group row">
														<label class="col-sm-2 col-form-label">Valor
															Unitario</label>
														<div class="col-sm-2">
															<div class="input-group">
																<span class="input-group-addon">R$</span> <input
																	class="form-control" placeholder="Valor Unitario"
																	type="number" pattern="[0-9]+([\.,][0-9]+)?"
																	step="0.01" name="material.valorUnitario">
															</div>
														</div>

														<label class="col-sm-2 col-form-label">Situacao:</label>
														<div class="col-md-6">
															<div class="radio">
																<input name="material.situacao" type="radio" id="ATIVO"
																	value="ATIVO" checked> <label for="ATIVO">Ativo</label>
																<input name="material.situacao" type="radio"
																	id="INATIVO" VALUE="INATIVO"> <label
																	for="INATIVO">Inativo</label> <input
																	name="material.situacao" type="radio"
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
																	<h4 class="sub-title">Informacoes Tecnicas</h4>
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
																	<h4 class="sub-title">Informacoes Estoque</h4>
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
																		<label class="col-sm-2 col-form-label">Lead
																			Time (D) :</label>
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

								<!-- Fim Aba Dados Básicos -->
							</div>

							<!-- Início Aba Estrutura -->
							<div class="tab-pane" id="estrutura" role="tabpanel">
								<select id='custom-headers' class="searchable"
									multiple='multiple'>
									<option value='elem_1' selected>elem 1</option>
									<option value='elem_2'>elem 2</option>
									<option value='elem_3'>elem 3</option>
									<option value='elem_4' selected>elem 4</option>
									<option value='elem_5'>elem 5</option>
									<option value='elem_6'>elem 6</option>
									<option value='elem_7'>elem 7</option>
									<option value='elem_8'>elem 8</option>
									<option value='elem_9'>elem 9</option>
									<option value='elem_10'>elem 10</option>
									<option value='elem_11'>elem 11</option>
									<option value='elem_12'>elem 12</option>
									<option value='elem_13'>elem 13</option>
									<option value='elem_14'>elem 14</option>
									<option value='elem_15'>elem 15</option>
									<option value='elem_16'>elem 16</option>
								</select>





							</div>
							<!-- Fim Aba Estrutura -->

							<!-- Início Aba Roteiro -->
							<div class="tab-pane" id="roteiro" role="tabpanel">
								<table class="table">
									<thead>
										<tr>
											<th class="col-md-1">Seq.</th>
											<th class="col-md-4">Operacao</th>
											<th class="col-md-2">Tempo Setup (hh:mm:ss)</th>
											<th class="col-md-2">Tempo Prod. (hh:mm:ss)</th>
											<th class="col-md-2">Tempo Finl. (hh:mm:ss)</th>
											<th class="col-md-1"><button class="btn btn-success btn-circle btn-lg waves-effect waves-lights">+</button></th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="col-md-1"><span id="seq">1</span></td>
											<td class="col-md-4">
											
											
											
											    <select id="e1">
        <option value="AL">Alabama</option>

        <option value="WY">Wyoming</option>
    </select>
											
											
											
											
											
											</td>
											<td class="col-md-2"><input type="time" class="form-control"  step="1" pattern="^([0-1]?[0-9]|2[0-4]):([0-5][0-9])(:[0-5][0-9])?$"></td>
											<td class="col-md-2"><input type="time" class="form-control"  step="1"  pattern="^([0-1]?[0-9]|2[0-4]):([0-5][0-9])(:[0-5][0-9])?$"></td>
											<td class="col-md-2"><input type="time" class="form-control"  step="1" pattern="^([0-1]?[0-9]|2[0-4]):([0-5][0-9])(:[0-5][0-9])?$"></td>
											<td class="col-md-1"><button class="btn btn-danger btn-circle btn-sm waves-effect waves-lights">X</button></td>
										</tr>
									</tbody>

								</table>
							</div>
							<!-- Fim Aba Roteiro -->
						</div>

						<!--  End Content Tabs -->










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































