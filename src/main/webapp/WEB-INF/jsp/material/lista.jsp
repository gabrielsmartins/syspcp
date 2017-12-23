<!DOCTYPE HTML>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


<%@ include file="../common/import_css.jspf"%>


<title>Consulta - Material</title>
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

			<div>
				<div class="pull-right table-title-top-action">
					<div class="pmd-textfield pull-left">
						<input id="exampleInputAmount" class="form-control"
							placeholder="Pesquisar por..." type="text"><span
							class="pmd-textfield-focused"></span>
					</div>
					<a href="javascript:void(0);"
						class="btn btn-red pmd-btn-raised add-btn pmd-ripple-effect pull-left">Pesquisar</a>
				</div>
				<!-- Title -->
				<h1 class="section-title" id="services">
					<span>Material</span>
				</h1>
				<!-- End Title -->
				<!--breadcrum start-->
				<ol class="breadcrumb text-left">
					<li><a href="<c:url value='/materiais/'/>">Materiais</a></li>
					<li class="active">Consulta</li>
				</ol>
				<!--breadcrum end-->
			</div>


			<!-- Start Message -->
			<c:if test="${not empty mensagem}">
				<div class="alert alert-success" role="alert">${mensagem}</div>
			</c:if>

			<!-- End Message -->


			<div class="pmd-card pmd-z-depth pmd-card-custom-view">
				<table class="table pmd-table table-hover table-striped display responsive nowrap table-inverse">

					<thead>
						<tr>
							<th>ID</th>
				<th>Descrição</th>
				<th>Código Interno</th>
				<th>Unidade</th>
				<th>Quantidade Estoque</th>
				<th>Quantidade Mínima</th>
				<th>Valor Unit (R$)</th>
				<th>Peso (KG)</th>
				<th>Comprimento (mm)</th>
				<th>Largura (mm)</th>
				<th>Altura (mm)</th>
				<th>Situação</th>
				<th></th>
						</tr>
					</thead>


					<tbody>
					<c:forEach items="${materialList}" var="material">
				<tr>
					<td>${material.id}</td>
					<td>${material.descricao}</td>
					<td>${material.codigoInterno}</td>
					<td>${material.unidadeMedida.sigla}</td>
					<td>${material.quantidadeEstoque}</td>
					<td>${material.quantidadeMinima}</td>
					<td>${material.valorUnitario}</td>
					<td>${material.peso}</td>
					<td>${material.comprimento}</td>
					<td>${material.largura}</td>
					<td>${material.altura}</td>
					<td>${material.situacao}</td>
					<td><a href="<c:url value='/materiais/${material.id}'/>"
									class="btn pmd-btn-fab pmd-btn-flat pmd-ripple-effect btn-red btn-sm">
										<i class="material-icons md-dark pmd-sm">edit</i>
								</a> <a href="javascript:void(0);"
									class="btn pmd-btn-fab pmd-btn-flat pmd-ripple-effect btn-red btn-sm">
										<i class="material-icons md-dark pmd-sm">delete</i>
								</a></td>
	
			</c:forEach>
					</tbody>
				</table>
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