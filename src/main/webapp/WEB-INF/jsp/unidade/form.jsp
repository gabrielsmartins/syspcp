<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!Doctype html>
<html>
  <head>
<%@ include file="../common/import_css.jspf"%>
    <title>Unidade de Medida - Cadastro</title>
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
        <a href="#!" class="breadcrumb">Unidade de Medida</a>
        <a href="#!" class="breadcrumb">Cadastro</a>
      </div>
    </div>
  </nav>
         <!-- Fim Breadcrumbs -->

  
					<div class="card-panel">
						<h4 class="header2"><strong>Unidade de Medida - Cadastro</strong></h4>
						<div class="row">
							<form class="col s12" action="<c:url value='/unidades/'/>"
								method="POST" accept-charset="UTF-8">
								<div class="row">
									<div class="input-field col s6">
										<input id="descricao" type="text" class="validate" name="unidade.descricao"> 
											<label for="descricao">Descrição:</label>
									</div>
								</div>
								<div class="row">
									<div class="input-field col s3">
										<input id="sigla" type="text" name="unidade.sigla" class="validate">
										<label for="sigla">Sigla:</label>
									</div>
								</div>


								<div class="row">
										<button class="btn grey darken-4 waves-effect waves-light right" type="submit">
											Salvar  <i class="material-icons right">send</i>
										</button>
								</div>
								
							</form>
						</div>

					</div>


        </div>
   
  </body>
  </main>
  
  
<%@ include file="../common/footer.jspf"%>
 
</html>







