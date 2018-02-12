<!DOCTYPE html>
<html lang="pt-br">
<head>
<title>Opera��o - Cadastro</title>
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
							<h5 class="breadcrumbs-title">Opera��o</h5>
							<ol class="breadcrumbs">
								<li><a href="index.html">Dashboard</a></li>
								<li><a href="#">Opera��o</a></li>
								<li class="active">Cadastro</li>
							</ol>
						</div>
					</div>


					<div class="card-panel">
						<h4 class="header2">Opera��o - Cadastro</h4>
						<div class="row">
							<form action="<c:url value='/operacoes/'/>" method="POST"
								accept-charset="UTF-8">

								<div class="row">
									<div class="input-field col s6">
										<input id="descricao" type="text" class="validate"
											name="operacao.descricao"> <label for="descricao"
											class="">Descricao</label>
									</div>
								</div>



								<div class="row">
									<div class="input-field col s6">
										<textarea id="instrucao" class="materialize-textarea"
											name="operacao.instrucao"></textarea>
										<label for="instrucao">Instru��o</label>
									</div>
								</div>


								<div class="row">
									<div class="input-field col s6">
										<select name="operacao.setor.id">
											<option value="" disabled selected>Escolha um setor</option>
											<c:forEach items="${setores}" var="setor">
												<option value="${setor.id}">${setor.descricao}</option>
											</c:forEach>
										</select> <label>Setor</label>
									</div>
								</div>



								<div class="row">
									<button
										class="btn grey darken-4 waves-effect waves-light right"
										type="submit">
										Salvar <i class="mdi-content-send right"></i>
									</button>
								</div>

							</form>
						</div>
					</div>

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




































