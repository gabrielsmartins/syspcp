<!DOCTYPE html>
<html lang="pt-br">
<head>
<title>Unidade de Medida - Cadastro</title>
<%@ include file="../common/import_css.jspf"%>
</head>

<body>
	<!-- Start Page Loading -->
	<!-- <div id="loader-wrapper">
		<div id="loader"></div>
		<div class="loader-section section-left"></div>
		<div class="loader-section section-right"></div>
	</div>-->
	<!-- End Page Loading -->

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
                <h5 class="breadcrumbs-title">Unidade de Medida</h5>
                <ol class="breadcrumbs">
                    <li><a href="index.html">Dashboard</a></li>
                    <li><a href="#">Unidade de Medida</a></li>
                    <li class="active">Cadastro</li>
                </ol>
              </div>
            </div>
				
				
					<div class="card-panel">
						<h4 class="header2">Unidade de Medida - Cadastro</h4>
						<div class="row">
							<form class="col s12" action="<c:url value='/unidades/'/>"
								method="POST" accept-charset="UTF-8">
								<div class="row">
									<div class="input-field col s12">
										<input placeholder="Descricao" type="text" class="validate"
											name="unidade.descricao"> <label for="descricao"
											class="">Descricao</label>
									</div>
								</div>
								<div class="row">
									<div class="input-field col s12">
										<input placeholder="Sigla" type="text" name="unidade.sigla" class="validate">
										<label for="sigla" class="">Sigla</label>
									</div>
								</div>


								<div class="row">
									<div class="input-field col s12">
										<button
											class="btn grey darken-4 waves-effect waves-light right"
											type="submit" name="action">
											Salvar <i class="mdi-content-send right"></i>
										</button>
									</div>
								</div>
							</form>
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






