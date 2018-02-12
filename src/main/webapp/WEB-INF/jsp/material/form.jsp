<!DOCTYPE html>
<html lang="pt-br">
<head>
<title>Material - Cadastro</title>
<%@ include file="../common/import_css.jspf"%>
</head>

<body>
	<%@ include file="../common/header.jspf"%>


	<!-- START MAIN -->
	<main>
	<div id="main">
		<!-- START WRAPPER -->
		<div class="wrapper">
			<%@ include file="../common/sidebar.jspf"%>
			<!-- START CONTENT -->
			<section id="content">

				<!--start container-->
				<div class="container">
					<div class="row">
						<div class="col s12 m12 l12">
							<h5 class="breadcrumbs-title">Material</h5>
							<ol class="breadcrumbs">
								<li><a href="index.html">Dashboard</a></li>
								<li><a href="#">Material</a></li>
								<li class="active">Cadastro</li>
							</ol>
						</div>
					</div>

					<form action="<c:url value='/materiais/'/>" method="POST"
						accept-charset="UTF-8">
						<div class="card-panel">
							<h4 class="header2">Dados Básicos</h4>


							<div class="row">
								<div class="input-field col s3">
									<input id="codigoInterno" type="text"
										name="material.codigoInterno" class="validate"> <label
										for="codigoInterno">Código Interno:</label>
								</div>

								<div class="input-field col s6">
									<input id="descricao" class="validate" type="text"
										name="material.descricao"> <label for="descricao">Descricao:</label>
								</div>
							</div>



							<div class="row">
								<div class="input-field col s3">
									<input id="valorUnitario" class="validate" type="number"
										pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
										name="material.valorUnitario"> <label
										for="valorUnitario">Valor Unitário:</label>
								</div>


								<div class="input-field col s6">
									<label class="situacao">Situação:</label> <input
										name="material.situacao" type="radio" id="ATIVO" value="ATIVO"
										checked> <label for="ATIVO">Ativo</label> <input
										name="material.situacao" type="radio" id="INATIVO"
										VALUE="INATIVO"> <label for="INATIVO">Inativo</label>
									<input name="material.situacao" type="radio" id="FORA_DE_LINHA"
										VALUE="FORA_DE_LINHA"> <label for="FORA_DE_LINHA">Fora
										de Linha</label>


								</div>
							</div>


						</div>






						<div class="card-panel">
							<h4 class="header2">Dados Técnicos</h4>


							<div class="row">
								<div class="input-field col s3">
									<select name="material.unidadeMedida.id">
										<c:forEach items="${unidades}" var="unidade">
											<option value="${unidade.id}">${unidade.sigla}-${unidade.descricao}</option>
										</c:forEach>
									</select> <label for="peso">Unidade de Medida:</label>
								</div>


								<div class="input-field col s3">
									<input id="peso" type="number" pattern="[0-9]+([\.,][0-9]+)?"
										step="0.01" name="material.peso" class="validate"> <label
										for="peso">Peso (KG):</label>
								</div>
							</div>



							<div class="row">
								<div class="input-field col s3">
									<input id="comprimento" type="number"
										pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
										name="material.comprimento" class="validate"> <label
										for="comprimento">Comprimento (mm):</label>
								</div>

								<div class="input-field col s3">
									<input id="largura" type="number"
										pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
										name="material.largura" class="validate"> <label
										for="largura">Largura (mm):</label>
								</div>

								<div class="input-field col s3">
									<input id="altura" type="number" pattern="[0-9]+([\.,][0-9]+)?"
										step="0.01" name="material.altura" class="validate"> <label
										for="altura">Altura (mm):</label>
								</div>


							</div>

						</div>


						<div class="card-panel">
							<h4 class="header2">Dados Estoque</h4>


							<div class="row">
								<div class="input-field col s3">
									<input id="quantidadeEstoque" type="number"
										pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
										name="material.quantidadeEstoque" class="validate"> <label
										for="quantidadeEstoque">Quantidade Estoque :</label>
								</div>

								<div class="input-field col s3">
									<input id="quantidadeMinima" type="number"
										pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
										name="material.quantidadeMinima" class="validate"> <label
										for="quantidadeMinima">Quantidade Mínima :</label>
								</div>

								<div class="input-field col s3">
									<input id="leadtime" type="number"
										pattern="[0-9]+([\.,][0-9]+)?" step="0.01"
										name="material.leadTime" class="validate"> <label
										for="leadtime">Lead Time (D) :</label>
								</div>
							</div>

							<div class="row">
								<button class="btn grey darken-4 waves-effect waves-light right"
									type="submit">
									Salvar <i class="mdi-content-send right"></i>
								</button>
							</div>


						</div>


					</form>
				</div>
		</div>
		<!--end container-->
		</section>
		<!-- END CONTENT -->

		<%@ include file="../common/right_sidebar.jspf"%>


	</div>
	<!-- END WRAPPER -->

	</div>
	</main>
	<!-- END MAIN -->

	<%@ include file="../common/footer.jspf"%>
	<%@ include file="../common/import_js.jspf"%>

</body>

</html>







































