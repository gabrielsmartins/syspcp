<!Doctype html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


<%@ include file="../common/import_css.jspf"%>

<title>Novo - Material</title>
</head>

<body
	class="app header-fixed sidebar-fixed aside-menu-fixed aside-menu-hidden">

	<%@ include file="../common/navbar.jspf"%>



	<div class="app-body">


		<%@ include file="../common/sidebar.jspf"%>



		<main class="main"> <!-- Breadcrumb -->
		<ol class="breadcrumb">
			<li class="breadcrumb-item">Home</li>
			<li class="breadcrumb-item"><a href="#">Produto</a></li>
			<li class="breadcrumb-item active">Novo</li>

			<!-- Breadcrumb Menu-->
			<li class="breadcrumb-menu d-md-down-none">
				<div class="btn-group" role="group" aria-label="Button group">
					<a class="btn" href="#"><i class="icon-speech"></i></a> <a
						class="btn" href="./"><i class="icon-graph"></i>
						&nbsp;Dashboard</a> <a class="btn" href="#"><i
						class="icon-settings"></i> &nbsp;Settings</a>
				</div>
			</li>
		</ol>

		<div class="container-fluid">

			<div class="animated fadeIn">

				<div class="card">
					<div class="card-header">
						<strong>Material - Novo</strong>
					</div>

					<form action="<c:url value='/materiais/'/>" method="POST"
						accept-charset="UTF-8">
						<div class="card-body">

							<!-- Dados B�sicos -->
							<fieldset>
								<legend><span class="legenda">Dados B�sicos</span></legend>



								<div class="row">
									<div class="col-md-3">
										<div class="md-form">
											<input name="material.codigoInterno" id="codigoInterno"
												class="form-control" type="text"> <label
												for="codigoInterno">C�digo Interno:</label>
										</div>
									</div>


									<div class="col-md-6">
										<div class="md-form">
											<input name="material.descricao" id="descricao"
												class="form-control" type="text"> <label
												for="descricao">Descricao:</label>
										</div>
									</div>
								</div>


								<div class="row">
									<div class="col-md-3">
										<div class="md-form">
											<input name="material.valorUnitario" id="descricao"
												class="form-control" type="text"> <label
												for="descricao">Valor Unit�rio:</label>
										</div>
									</div>


									<div class="col-md-3">
										<div class="md-form">
											<input name="material.leadTime" id="leadTime" class="form-control" type="text"> <label
												for="leadTime">Lead Time (d):</label>
										</div>
									</div>
								</div>


								<div class="row">
									<div class="col-md-6">
										<label for="descricao">Situacao:</label>
										<div class="form-group">
											<input name="material.situacao" type="radio" id="ATIVO"
												value="ATIVO" checked> <label for="ATIVO">Ativo</label> <input
												name="material.situacao" type="radio" id="INATIVO"
												VALUE="INATIVO"> <label for="INATIVO">Inativo</label>
											<input name="material.situacao" type="radio"
												id="FORA_DE_LINHA" VALUE="FORA_DE_LINHA"> <label
												for="FORA_DE_LINHA">Fora de Linha</label>
										</div>
									</div>
								</div>

							</fieldset>


							<!--Dados T�cnicos-->
							<fieldset>
								<legend><span class="legenda">Dados T�cnicos</span></legend>

								<div class="row">
									<div class="col-md-3">
										<div class="md-form">
											<input name="material.peso" id="peso" class="form-control"
												type="text"> <label for="peso">Peso (Kg):</label>
										</div>
									</div>


									<div class="col-md-6">
										<select class="form-control" name="material.unidadeMedida.id">
											<c:forEach items="${unidades}" var="unidade">
												<option value="${unidade.id}">${unidade.sigla}-${unidade.descricao}</option>
											</c:forEach>
										</select> <label>Unidade de Medida:</label>
									</div>
								</div>

								<div class="row">

									<div class="col-md-3">
										<div class="md-form">
											<input name="material.comprimento" id="comprimento"
												class="form-control" type="text"> <label
												for="comprimento">Comprimento (mm):</label>
										</div>
									</div>

									<div class="col-md-3">
										<div class="md-form">
											<input name="material.largura" id="largura"
												class="form-control" type="text"> <label
												for="largura">Largura (mm):</label>
										</div>
									</div>


									<div class="col-md-3">
										<div class="md-form">
											<input name="material.altura" id="altura"
												class="form-control" type="text"> <label
												for="altura">Altura (mm):</label>
										</div>
									</div>
								</div>

							</fieldset>


							<!-- Dados Estoque -->
							<fieldset>
								<legend><span class="legenda">Dados Estoque</span></legend>

								<div class="row">
									<div class="col-md-3">
										<div class="md-form">
											<input name="material.quantidadeEstoque"
												id="quantidadeEstoque" class="form-control" type="text">
											<label for="quantidadeEstoque">Quantidade Estoque:</label>
										</div>
									</div>


									<div class="col-md-3">
										<div class="md-form">
											<input name="material.quantidadeMinima" id="quantidadeMinima"
												class="form-control" type="text"> <label
												for="quantidadeMinima">Quantidade M�nima:</label>
										</div>
									</div>
								</div>
							</fieldset>


						</div>

						<div class="card-footer">
							<button class="btn black" type="submit">Salvar</button>
							<button type="reset" class="btn grey">Cancelar</button>
						</div>

					</form>
				</div>



				<!--/.row-->
			</div>



		</div>
		<!-- /.conainer-fluid --> </main>



		<%@ include file="../common/sidebar_right.jspf"%>
	</div>


	<%@ include file="../common/footer.jspf"%>
	<%@ include file="../common/import_js.jspf"%>
</html>





