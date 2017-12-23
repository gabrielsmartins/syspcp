<!DOCTYPE HTML>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


<%@ include file="../common/import_css.jspf"%>


<title>Unidade de Medida - Editar</title>
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


			<!-- Title -->
			<h1 class="section-title" id="services">
				<span>Unidade de Medida</span>
			</h1>
			<!-- End Title -->

			<!--breadcrum start-->
			<ol class="breadcrumb text-left">
				<li><a href="<c:url value='/unidades/'/>">Unidades</a></li>
				<li class="active">Editar</li>
			</ol>
			<!--breadcrum end-->



			<!-- Start Form  -->
			<div class="section section-custom billinfo">
				<!--section-title -->
				<h2>Editar Unidade de Medida</h2>
				<!--section-title end -->

				<div class="pmd-card pmd-z-depth pmd-card">
					<div class="pmd-card-body">
						<form action="<c:url value='/unidades/${unidadeMedida.id}'/>" method="POST"
							accept-charset="UTF-8">
							<div
								class="form-group pmd-textfield pmd-textfield-floating-label">
								<label for="regular1" class="control-label">Descrição:</label> 
								<input
									name="unidade.descricao" id="regular1" class="form-control"
									type="text" value="${unidadeMedida.descricao}"><span class="pmd-textfield-focused"></span>
							</div>

							<div
								class="form-group pmd-textfield pmd-textfield-floating-label">
								<label for="regular1" class="control-label">Sigla:</label> <input
									name="unidade.sigla" id="regular1" class="form-control"
									type="text" value="${unidadeMedida.sigla}"><span class="pmd-textfield-focused"></span>
							</div>

							<div class="pmd-card-actions">
								<button class="btn btn-red next" type="submit" name="_method" value="PUT">Salvar</button>
								<button type="reset" class="btn btn-gray" name="_method" value="DELETE">Excluir</button>
							</div>
						</form>
					</div>

				</div>
				<!-- End Form  -->
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