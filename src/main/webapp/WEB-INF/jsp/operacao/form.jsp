<!Doctype html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


<%@ include file="../common/import_css.jspf"%>

<title>Novo - Operacao</title>
</head>

<body
	class="app header-fixed sidebar-fixed aside-menu-fixed aside-menu-hidden">

	<%@ include file="../common/navbar.jspf"%>



	<div class="app-body">


		<%@ include file="../common/sidebar.jspf"%>



		<main class="main"> <!-- Breadcrumb -->
		<ol class="breadcrumb">
			<li class="breadcrumb-item">Home</li>
			<li class="breadcrumb-item"><a href="#">Operacao</a></li>
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
						<strong>Operacao - Novo</strong>
					</div>

					<form action="<c:url value='/operacoes/'/>" method="POST"
						accept-charset="UTF-8">
						<div class="card-body">


							<fieldset>
								<legend>
									<span class="legenda">Dados B�sicos</span>
								</legend>
								<div class="col-md-6">
									<div class="md-form">
										<input name="operacao.descricao" id="descricao"
											class="form-control" type="text"> <label
											for="descricao">Descricao:</label>
									</div>
								</div>


								<div class="col-md-9">
									<div class="md-form">
										<textarea id="instrucao" class="md-textarea"
											name="operacao.instrucao"></textarea>
										<label for="form76">Instru��o:</label>
									</div>
								</div>


								<div class="col-md-6">
									<label>Setor:</label> <select class="form-control"
										name="operacao.setor.id">
										<c:forEach items="${setores}" var="setor">
											<option value="${setor.id}">${setor.descricao}</option>
										</c:forEach>
									</select>
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





