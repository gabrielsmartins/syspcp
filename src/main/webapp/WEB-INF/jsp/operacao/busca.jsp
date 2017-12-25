<!DOCTYPE HTML>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


<%@ include file="../common/import_css.jspf"%>


<title>Editar - Operação</title>
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
				<h2>Editar Operação</h2>
				<!--section-title end -->

				<!--breadcrum start-->
				<ol class="breadcrumb text-left">
					<li><a href="<c:url value='/operacoes/'/>">Operações</a></li>
					<li class="active">Editar</li>
				</ol>
				<!--breadcrum end-->



				<div class="pmd-card pmd-z-depth pmd-card">
					<div class="pmd-card-body">
						<form action="<c:url value='/operacoes/${operacao.id}'/>"
							method="POST" accept-charset="UTF-8">



							<div
								class="form-group pmd-textfield pmd-textfield-floating-label">
								<label for="regular1" class="control-label">Descrição:</label> <input
									name="operacao.descricao" id="regular1" class="form-control"
									type="text" value="${operacao.descricao}"><span
									class="pmd-textfield-focused"></span>
							</div>

							<div
								class="form-group pmd-textfield">
								<label for="regular1" class="control-label">Instrução:</label>
								<textarea class="form-control" name="operacao.instrucao">${operacao.instrucao}</textarea>
								<span class="pmd-textfield-focused"></span>
							</div>


							<div class="form-group pmd-textfield">
								<label>Setor:</label> <select
									name="operacao.setor.id"
									class="select-simple form-control pmd-select2 select2-hidden-accessible"
									tabindex="-1" aria-hidden="true">
									<c:forEach items="${setores}" var="setor">
										<option value="${setor.id}"
											<c:if test="${setor.id == operacao.setor.id}">selected</c:if>>${setor.descricao}</option>
									</c:forEach>
								</select><span
									class="select2 select2-container select2-container--bootstrap select2-container--below"
									dir="ltr" style="width: 236px;"><span class="selection"><span
										class="select2-selection select2-selection--single"
										role="combobox" aria-haspopup="true" aria-expanded="false"
										tabindex="0" aria-labelledby="select2-4dir-container"><span
											class="select2-selection__rendered"
											id="select2-4dir-container" title=""></span><span
											class="select2-selection__arrow" role="presentation"><b
												role="presentation"></b></span></span></span><span class="dropdown-wrapper"
									aria-hidden="true"></span></span><span class="pmd-textfield-focused"></span>
							</div>



							<div class="pmd-card-actions">
								<button class="btn btn-red next" type="submit" name="_method"
									value="PUT">Salvar</button>
								<button type="submit" class="btn btn-gray" name="_method"
									value="DELETE">Excluir</button>
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