<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!Doctype html>
<html>
  <head>
<%@ include file="../common/import_css.jspf"%>
    <title>Home</title>
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
        <a href="#!" class="breadcrumb">Setor</a>
        <a href="#!" class="breadcrumb">Editar</a>
      </div>
    </div>
  </nav>
         <!-- Fim Breadcrumbs -->

					<div class="card-panel">
						<h4 class="header2"><strong>Setor - Editar</strong></h4>
						<div class="row">
							<form action="<c:url value='/setores/${setor.id}'/>" method="POST" accept-charset="UTF-8">
								<div class="row">
									<div class="input-field col s6">
										<input id="descricao" type="text" class="validate" name="setor.descricao" value="${setor.descricao}"> 
											<label class="active" for="descricao" class="">Descricao</label>
									</div>
								</div>
								
								<div class="row">
										<button class="btn grey darken-4 waves-effect waves-light right" type="submit" name="_method" value="DELETE">
											Excluir <i class="material-icons right">clear</i>
										</button>
										<button class="btn grey darken-4 waves-effect waves-light right" type="submit" name="_method" value="PUT">
											Salvar <i class="material-icons right">save</i>
										</button>
								</div>
								
							</form>
						</div>

					</div>

	
   
  </body>
  </main>
  
  
<%@ include file="../common/footer.jspf"%>
 
</html>

















