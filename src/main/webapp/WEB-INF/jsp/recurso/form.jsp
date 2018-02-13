<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<title>Recurso - Cadastro</title>
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
							<h5 class="breadcrumbs-title">Recurso</h5>
							<ol class="breadcrumbs">
								<li><a href="index.html">Dashboard</a></li>
								<li><a href="#">Recurso</a></li>
								<li class="active">Cadastro</li>
							</ol>
						</div>
					</div>


					<div class="card-panel">
						<h4 class="header2"><strong>Recurso - Cadastro</strong></h4>
						<div class="row">
							<form action="<c:url value='/recursos/'/>" method="POST"
								accept-charset="UTF-8">
								
								<div class="row">
								<div class="input-field col s6">
									<input id="descricao" type="text" class="validate"
										name="recurso.descricao"> <label for="descricao"
										class="">Descrição:</label>
								</div>
								</div>


								<div class="row">
									<div class="input-field col s6">
										<select name="recurso.setor.id">
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























