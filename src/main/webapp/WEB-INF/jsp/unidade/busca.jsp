<!DOCTYPE html>
<html lang="pt-br">
<head>
<title>Unidade de Medida - Editar</title>
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
                <h5 class="breadcrumbs-title">Unidade de Medida</h5>
                <ol class="breadcrumbs">
                    <li><a href="index.html">Dashboard</a></li>
                    <li><a href="#">Unidade de Medida</a></li>
                    <li class="active">Editar</li>
                </ol>
              </div>
            </div>
				
				
					<div class="card-panel">
						<h4 class="header2">Unidade de Medida - Editar</h4>
						<div class="row">
							<form action="<c:url value='/unidades/${unidadeMedida.id}'/>" method="POST" accept-charset="UTF-8">
								<div class="row">
									<div class="input-field col s6">
										<input id="descricao" type="text" class="validate" name="unidade.descricao" value="${unidadeMedida.descricao}"> 
											<label class="active for="descricao" class="">Descricao</label>
									</div>
								</div>
								<div class="row">
									<div class="input-field col s3">
										<input id="sigla" type="text" name="unidade.sigla" class="validate" value="${unidadeMedida.sigla}">
										<label class="active for="sigla" class="">Sigla</label>
									</div>
								</div>


								<div class="row">
										<button class="btn grey darken-4 waves-effect waves-light right" type="submit" name="_method" value="DELETE">
											Excluir <i class="mdi-action-delete right"></i>
										</button>
										<button class="btn grey darken-4 waves-effect waves-light right" type="submit" name="_method" value="PUT">
											Salvar <i class="mdi-content-save right"></i>
										</button>
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



















