<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<title>Operação - Cadastro</title>
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
							<h5 class="breadcrumbs-title">Operação</h5>
							<ol class="breadcrumbs">
								<li><a href="index.html">Dashboard</a></li>
								<li><a href="#">Operação</a></li>
								<li class="active">Cadastro</li>
							</ol>
						</div>
					</div>


					<div class="card-panel">
						<h4 class="header2"><strong>Operação - Cadastro</strong></h4>
						<div class="row">
							<form action="<c:url value='/operacoes/${operacao.id}'/>"
						method="POST" accept-charset="UTF-8">

								<div class="row">
									<div class="input-field col s6">
										<input id="descricao" type="text" class="validate"
											name="operacao.descricao" value="${operacao.descricao}"> <label for="descricao"
											class="active">Descrição:</label>
									</div>
								</div>



								<div class="row">
									<div class="input-field col s6">
										<textarea id="instrucao" class="materialize-textarea"
											name="operacao.instrucao">${operacao.instrucao}</textarea>
										<label for="instrucao">Instrução:</label>
									</div>
								</div>


								<div class="row">
									<div class="input-field col s6">
										<select name="operacao.setor.id">
													<c:forEach items="${setores}" var="setor">
														<option value="${setor.id}"
															<c:if test="${setor.id == operacao.setor.id}">selected</c:if>>${setor.descricao}</option>
													</c:forEach>
												</select> <label>Setor:</label>
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

































































