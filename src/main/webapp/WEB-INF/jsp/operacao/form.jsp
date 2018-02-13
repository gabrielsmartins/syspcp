<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!Doctype html>
<html>
  <head>
<%@ include file="../common/import_css.jspf"%>
<title>Operação - Cadastro</title>
<%@ include file="../common/import_js.jspf"%>
  </head>
  
<%@ include file="../common/header.jspf"%>
  <main>
  <body>
      <!-- Breadcrumb -->
   <nav class="grey">
    <div class="nav-wrapper">
      <div class="col s12">
        <a href="#!" class="breadcrumb">Dashboard</a>
        <a href="#!" class="breadcrumb">Operação</a>
        <a href="#!" class="breadcrumb">Cadastro</a>
      </div>
    </div>
  </nav>
         <!-- Fim Breadcrumbs -->

					<div class="card-panel">
						<h4 class="header2"><strong>Operação - Cadastro</strong></h4>
						<div class="row">
							<form action="<c:url value='/operacoes/'/>" method="POST"
								accept-charset="UTF-8">

								<div class="row">
									<div class="input-field col s6">
										<input id="descricao" type="text" class="validate"
											name="operacao.descricao"> <label for="descricao"
											class="">Descrição:</label>
									</div>
								</div>



								<div class="row">
									<div class="input-field col s6">
										<textarea id="instrucao" class="materialize-textarea"
											name="operacao.instrucao"></textarea>
										<label for="instrucao">Instrução:</label>
									</div>
								</div>


								<div class="row">
									<div class="input-field col s6">
										<select name="operacao.setor.id">
											<option value="" disabled selected>Escolha um setor</option>
											<c:forEach items="${setores}" var="setor">
												<option value="${setor.id}">${setor.descricao}</option>
											</c:forEach>
										</select> <label>Setor:</label>
									</div>
								</div>



								<div class="row">
									<button
										class="btn grey darken-4 waves-effect waves-light right"
										type="submit">
										Salvar  <i class="material-icons right">send</i>
									</button>
								</div>

							</form>
						</div>
					</div>


   
  </body>
  </main>
  
  
<%@ include file="../common/footer.jspf"%>
 
</html>


















